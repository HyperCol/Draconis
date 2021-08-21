#version 460

layout (location = 0) out vec4 fragColor0;

in vec4 color;
in vec2 texcoord;

uniform sampler2D tex;
uniform float alphaTestRef;

void main()
{
    fragColor0 = color * texture2D(tex, texcoord);
    if (fragColor0.w < alphaTestRef)
        discard;
}

/* DRAWBUFFERS:0 */