CONFIG += qt \
            uitools
QT += opengl
HEADERS +=  src/io/Window.hpp \
            src/utils/LoadFile.hpp \
            src/renderer/Renderer.hpp \
            src/renderer/Texture.hpp \
            src/renderer/FrameBuffer.hpp \
            src/renderer/Shader.hpp \
            src/renderer/DrawQuad.hpp \
            src/nodes/TimeNode.hpp \
            src/nodes/ColorNode.hpp \
            src/nodes/RayMarchingNode.hpp \
            src/utils/CheckGLError.hpp \
    src/io/NodeView.hpp \
    src/io/Compositor.hpp \
    src/io/PortView.hpp \
    src/io/LinkView.hpp
INCLUDEPATH += ./extern ./src ./extern/kiwi/include
SOURCES +=  src/main.cpp \
            src/io/Window.cpp \
            src/utils/LoadFile.cpp \ 
            src/renderer/Renderer.cpp \
            src/renderer/Shader.cpp \
            src/renderer/FrameBuffer.cpp \
            src/renderer/DrawQuad.cpp \
            src/nodes/TimeNode.cpp \
            src/nodes/ColorNode.cpp \
            src/nodes/RayMarchingNode.cpp \
            src/utils/CheckGLError.cpp \
            src/KiwiInit.cpp \
    src/io/NodeView.cpp \
    src/io/Compositor.cpp \
    src/io/PortView.cpp \
    src/io/LinkView.cpp

QMAKE_CXXFLAGS += -std=c++0x -pg -g
            
LIBS += -lGLEW ./extern/kiwi/libkiwicpp.a
DESTDIR = ./bin/
TARGET = GLSLraymarcher

FORMS += \
    mainwindow.ui
