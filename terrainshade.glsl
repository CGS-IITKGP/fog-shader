//terrain shading with fog and texture 
vec3 terrain(vec3 p,vec3 r,vec3 campos)
{
 vec3 normal = normalcalc(p);
 vec3 light = lighting(normal);
 vec3 baseColor = texture(iChannel0,p.xz).rgb*.5;
 vec3 shaded = baseColor*light;
 return applyfog(shaded,p,campos);
}
