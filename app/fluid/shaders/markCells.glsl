//***     Globals     ***
attribute float id;
uniform highp sampler2D texture;
uniform vec2 bufSize;

//***  Vertex Shader  ***
void main(void)
{
    float hid = id + 0.5;
    float width = bufSize.x;
    float x = floor(mod(hid, width));
    float y = floor(hid / width);
    vec4 data = texture2D(texture, vec2(x, y) / bufSize);
    vec2 pos = data.xy * 2. - vec2(1);
    gl_Position = vec4(pos, 0.0, 1.0);
    gl_PointSize = 1.;
}

//*** Fragment Shader ***
void main(void)
{
    gl_FragColor = vec4(1, 0, 0, 1);
}