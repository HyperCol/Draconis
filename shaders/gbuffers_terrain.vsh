#version 460

in vec3 vaPosition;
in vec4 vaColor;
in vec2 vaUV0;
in ivec2 vaUV2;
in vec3 vaNormal;

in vec4 mc_Entity;
in vec4 mc_midTexCoord;
in vec4 at_tangent;

uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;
uniform vec3 chunkOffset;

out vec4 color;
out vec2 texcoord;

void main()
{
    color = vaColor;
    texcoord = vaUV0;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(vaPosition + chunkOffset, 1.0);
}