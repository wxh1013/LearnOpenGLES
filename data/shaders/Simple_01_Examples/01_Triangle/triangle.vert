#version 300 es
//#extension GL_ARB_separate_shader_objects : enable
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aUV;
layout (location = 2) in vec3 aNormal;
out vec3 ourColor;
uniform struct UBO{
    mat4 projection;
    mat4 model;
}ubo;
void main()
{
    gl_Position = ubo.projection*ubo.model*vec4(aPos, 1.0);
    ourColor = aNormal;
}
