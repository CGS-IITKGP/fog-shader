//terrain height generation
float terrainheight(float x,float z)
{
 return clamp(sin(x*2.)*sin(z)+sin(x)*sin(z*0.5),.0,2.);
}

//terrain normal(needed for lighting)
vec3 normalcalc(vec3 p)
{
 float dx = sin(p.z)*cos(p.x*2.)*2.+sin(p.z*0.5)*cos(p.x);
 float dz = sin(p.x)*cos(p.z)+sin(p.x)*cos(p.z*0.5)*0.5;
 return normalize(vec3(dx,1.,dz));
}
