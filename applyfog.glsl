//function to apply fog effect based on distance and height
vec3 applyfog(vec3 col, vec3 hitpos, vec3 campos)
{
 float d = length(hitpos-campos);
 float fogFactor = 1.0-exp(-d*density_fog*exp(-hitpos.y*height_fog));
 fogFactor *= clamp(fbm(hitpos.xz*0.1+iTime*0.1),0.6,1.0);
 vec3 fogColor = vec3(0.6,0.7,0.8);
 return mix(col, fogColor, fogFactor);
}
