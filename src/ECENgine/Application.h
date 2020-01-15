//
// Created by niels on 14/01/2020.
//
#pragma once

namespace ECEN{
    class Application {
    public:
        Application();
        virtual ~Application();

        void run();
        int test();
    };

    // Function to be defined by the client
    extern Application* CreateApplication();
}


