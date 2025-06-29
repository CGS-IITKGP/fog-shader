void mainImage(out vec4 fragColor,in vec2 fragCoord)
{
 //normalizing uv coordinates
 vec2 uv = (fragCoord.xy/iResolution.xy)*2.-1.;
 uv.x *= iResolution.x/iResolution.y;

 //camera movement
 float camZ = iTime*1.;  //moves forward in z
 float camX = 1.0 + sin(iTime)*.3; //oscillations in x
 float camY = terrainheight(camX,camZ) + .3; //followws terrain height in y
 vec3 campos = vec3(camX,camY,camZ);

 //camera's target points
 float lookahead = 1.;
 float targetX = 1. + sin((iTime + lookahead)*.5)*5.;
 float targetZ = camZ + lookahead;
 float targetY = terrainheight(targetX,targetZ) + 0.2;
 vec3 target = vec3(targetX,targetY,targetZ);

 //camera's orientation
 vec3 forward = normalize(target - campos);
 vec3 right = normalize(cross(vec3(0,1,0),forward));
 vec3 up = cross(forward,right);

 //ray dirn in space
 vec3 raydirn = normalize(forward + uv.x*right + uv.y*up);

 //find intersection with terrain using raymarching
 float t = castray(campos,raydirn,.1,20.,.2);
 vec3 pos = campos + raydirn*t;

 //computing color based on terrain intersection/sky
 vec3 color;
 if (t < 20.)
 {
  color = terrain(pos, raydirn, campos);
 }
 else
 {
  color = mix(vec3(.6,.8,1.),vec3(1.),smoothstep(.0,1.,uv.y));
 }

 fragColor = vec4(color,1.);
}
