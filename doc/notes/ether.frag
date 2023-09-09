// Ether by nimitz 2014 (twitter: @stormoid)
// https://www.shadertoy.com/view/MsjSW3
// License Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported
// License Contact the author for other licensing options

#define time iTime
mat2 m(float a) {
  float c = cos(a);
  float s = sin(a);
  return mat2(c, -s, s, c);
}
float map(vec3 pos) {
  pos.xz *= m(time * 0.4);
  pos.xy *= m(time * 0.3);
  vec3 q = pos * 2.0 + time;
  return length(pos + vec3(sin(time * 0.7)))
       * log(length(pos) + 1.)
       + sin(q.x + sin(q.z + sin(q.y))) * 0.5
       - 1.0;
}

void mainImage(out vec4 fColor, in vec2 vUV) {
  vec2  pos  = vUV.xy / iResolution.y - vec2(0.9, 0.5);
  vec3  O    = vec3(0.0);
  float dist = 2.5;
  for (int it = 0; it <= 5; it++) {
    vec3 pos = vec3(0, 0, 5.0)
             + normalize(vec3(pos.x, pos.y, -1.0))
             * dist;
    float rz = map(pos);
    float field = clamp((rz - map(pos + 0.1)) * 0.5, -0.1, 1.0);
    vec3 l = vec3(0.1, 0.3, 0.4)
           + vec3(5.0, 2.5, 3.0)
           * field;
    // Increase the distance
    dist += min(rz, 1.0);
    // Apply to the output color
    O = O * l
      + smoothstep(2.5, 0.0, rz)*0.7
      * l;
  }
  fColor = vec4(O, 1.0);
}
