//
// Created by niels on 15/01/2020.
//
#include "Log.h"

namespace ECEN{

    std::shared_ptr<spdlog::logger> Log::s_CoreLogger;
    std::shared_ptr<spdlog::logger> Log::s_ClientLogger;

    void Log::Init(){
        spdlog::set_pattern("%^[%T] %n: %v%$");

        s_CoreLogger = spdlog::stdout_color_mt("ECENgine");
        s_CoreLogger->set_level(spdlog::level::trace);

        s_ClientLogger = spdlog::stdout_color_mt("APPLICATION");
        s_ClientLogger->set_level(spdlog::level::trace);
    }
}

