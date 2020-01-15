//
// Created by niels on 14/01/2020.
//
#pragma once

#include "Application.h"
#include "Log.h"

int main(int argc, char** argv){

    ECEN::Log::Init();
    ECEN_CORE_WARN("Initialized logger in engine");
    ECEN_INFO("Howdy Var={0}", 5);

    auto test = ECEN::CreateApplication();
    test->test();
    delete test;
}