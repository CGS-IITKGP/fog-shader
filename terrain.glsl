// terrain height
float terrainHeight(float x, float z) {
    return sin(x) * sin(z);
}

// terrain normal
vec3 calcNormal(vec3 p) {
    float dx = sin(p.z) * cos(p.x);
    float dz = sin(p.x) * cos(p.z);
    return normalize(vec3(dx, 1.0, dz));
}
