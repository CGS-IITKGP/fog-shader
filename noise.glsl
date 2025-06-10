// random and noise for fog modulation
float rand2(vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

float noise(vec2 st) {
    vec2 i = floor(st);
    vec2 f = fract(st);
    float a = rand2(i);
    float b = rand2(i + vec2(1.0, 0.0));
    float c = rand2(i + vec2(0.0, 1.0));
    float d = rand2(i + vec2(1.0, 1.0));
    vec2 u = smoothstep(0.,1.,f);
    return mix(a, b, u.x) + 
           (c - a)*u.y*(1.0 - u.x) + 
           (d - b)*u.x*u.y;
}

float fbm(vec2 p) {
    float f = 0.0;
    f += 0.5 * noise(p); p *= 2.0;
    f += 0.25 * noise(p); p *= 2.0;
    f += 0.125 * noise(p);
    return f;
}
