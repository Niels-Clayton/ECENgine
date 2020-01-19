//
// Created by niels on 14/01/2020.
//
#include "GL/glew.h"
#include "GLFW/glfw3.h"
#include "Application.h"
#include <iostream>

namespace ECEN{
    Application::Application(){

    }

    Application::~Application(){

    }

    void Application::run() {
        while (true);
    }

// Testing Josh's first git change















    int Application::test(void){
        GLFWwindow* window;

        /* Initialize the library */
        if (!glfwInit())
            return -1;


        /* Create a windowed mode window and its OpenGL context */
        window = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);
        if (!window)
        {
            glfwTerminate();
            return -1;
        }

        /* Make the window's context current */
        glfwMakeContextCurrent(window);

        if(glewInit() != GLEW_OK){
            std::cout<<"GLEW Init failed"<<std::endl;
        }

        /* Loop until the user closes the window */
        while (!glfwWindowShouldClose(window))
        {
            /* Render here */
            glClear(GL_COLOR_BUFFER_BIT);

            glBegin(GL_TRIANGLES);
            glVertex2f(-0.5f, 0.25f);
            glVertex2f(0.5f, 0.25f);
            glVertex2f(0.0f, -0.75f);
            glEnd();

            glBegin(GL_TRIANGLES);
            glVertex2f(-0.5f, -0.5f);
            glVertex2f(0.5f, -0.5f);
            glVertex2f(0.0f, 0.5f);
            glEnd();

            /* Swap front and back buffers */
            glfwSwapBuffers(window);

            /* Poll for and process events */
            glfwPollEvents();
        }

        glfwTerminate();
        return 0;
    }
}