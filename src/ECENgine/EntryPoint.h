//
// Created by niels on 14/01/2020.
//
#pragma once
#include "Application.h"

int main(int argc, char** argv){
    printf("ECENgine engine running\n");
    auto test = ECENgine::CreateApplication();
    test->test();
    delete test;
}
