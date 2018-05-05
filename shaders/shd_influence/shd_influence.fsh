//
// Use with aura application surface to draw uniform influence aura even when
// planet auras overlap
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = vec4(1,1,1,0.3) * texture2D( gm_BaseTexture, v_vTexcoord );
}
