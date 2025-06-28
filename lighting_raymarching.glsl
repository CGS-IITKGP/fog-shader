//simple diffuse and ambient lighting
vec3 lighting(vec3 p)
{
 float diffuse = max(dot(lightdirn,p),.0);
 float ambient = ka*ia;
 return vec3(ambient+kd*diffuse*id);
}

//raymarching to find intersection with terrain
float castray(vec3 campos,vec3 raydirn,float mint,float maxt,float stepsize)
{
 float prevheight = .0, prevY = .0;
 for (float t = mint;t<maxt;t += stepsize)
 {
  vec3 p = campos+raydirn*t;
  float h = terrainheight(p.x,p.z);
    if (p.y < h)
    return t - stepsize + stepsize * (prevheight - prevY)/(p.y - h + prevheight - prevY);
  prevheight = h;
  prevY = p.y;
 }
 return maxt;
}
