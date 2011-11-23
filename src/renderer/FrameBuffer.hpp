
#pragma once
#ifndef RENDERER_FRAMEBUFFER_HPP
#define RENDERER_FRAMEBUFFER_HPP

#include <GL/glew.h>
#include <vector>
#include "renderer/Texture.hpp"

namespace renderer{

class FrameBuffer{
public:
    typedef std::vector<Texture2D*> TextureArray; 
    FrameBuffer( int nbTextures, int fbwidth, int fbheight );
    ~FrameBuffer();

    GLuint id() const
    {
        return _id;
    }

    void bind() const
    {
        glBindFramebuffer(GL_FRAMEBUFFER, _id);
    }

    static void unbind()
    {
        glBindFramebuffer(GL_FRAMEBUFFER, 0);
    }

    Texture2D& texture(int i) const
    {
        return *_textures[i];
    }

private:
    GLuint _id;
    TextureArray _textures;
};

}//namespace

#endif