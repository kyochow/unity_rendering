#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aUV;

out vec2 uv;

uniform mat4 modelMat;
uniform mat4 viewMat;
uniform mat4 projMat;

void main()
{
    //从右向左
    gl_Position = projMat * viewMat * modelMat * vec4(aPos,1.0);
    uv = aUV;
}
