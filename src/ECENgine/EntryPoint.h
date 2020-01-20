//
// Created by niels on 14/01/2020.
//
#pragma once

#include "Application.h"
#include "Log.h"

int main(int argc, char** argv){

    ECEN::Log::Init();
    ECEN_CORE_ERROR("Initialized logger in engine");
    ECEN_TRACE("Howdy {0}", "Nakisa");

    auto app = ECEN::CreateApplication();
    app->test();
    delete app;
}