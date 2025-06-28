//random generation function for 2d vector
float random(vec2 p)
{
 return fract(sin(dot(p.xy,vec2(12.9898,78.233)))*43758.5453123);
}

//2D noise based on random function,smooth interpolated noise
float noise(vec2 p) 
{
 vec2 i = floor(p);
 vec2 f = fract(p);
 float a = random(i);
 float b = random(i + vec2(1.,.0));
 float c = random(i + vec2(0.,1.));
 float d = random(i + vec2(1.,1.));
 vec2 u = smoothstep(0.,1.,f);
 return mix(a,b,u.x) + (c-a)*u.y*(1.-u.x)+(d-b)*u.x*u.y;
}

//fractal brownian motion for layered noise, used in fog movement
float fbm(vec2 p)
{
 float f = 0.;
 f += .5*noise(p);p *= 3.0;
 f += .25*noise(p);p *= 3.0;
 f += .125*noise(p);
 return f;
}
