//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float flash_amount; // a value between 0.0 (no flash) and 1.0 (full flash)

void main()
{
    vec4 base_color = texture2D(gm_BaseTexture, v_vTexcoord) * v_vColour;
    vec4 flash_color = vec4(1.0, 1.0, 1.0, base_color.a);
    gl_FragColor = mix(base_color, flash_color, flash_amount);
}
