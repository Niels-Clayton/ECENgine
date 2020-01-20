//
// Created by niels on 15/01/2020.
//
#pragma once

#include <memory>
#include "spdlog/spdlog.h"
#include "spdlog/sinks/stdout_color_sinks.h"

namespace ECEN{
    class Log {
    public:
        static void Init();

        inline static std::shared_ptr<spdlog::logger>& GetCoreLogger() {return s_CoreLogger;}
        inline static std::shared_ptr<spdlog::logger>& GetClientLogger() {return s_ClientLogger;}
    private:
        static std::shared_ptr<spdlog::logger> s_CoreLogger;
        static std::shared_ptr<spdlog::logger> s_ClientLogger;
    };
}

#define ECEN_CORE_TRACE(...)    ::ECEN::Log::GetCoreLogger()->trace(__VA_ARGS__)
#define ECEN_CORE_INFO(...)     ::ECEN::Log::GetCoreLogger()->info(__VA_ARGS__)
#define ECEN_CORE_WARN(...)     ::ECEN::Log::GetCoreLogger()->warn(__VA_ARGS__)
#define ECEN_CORE_ERROR(...)    ::ECEN::Log::GetCoreLogger()->error(__VA_ARGS__)

#define ECEN_TRACE(...)         ::ECEN::Log::GetClientLogger()->trace(__VA_ARGS__)
#define ECEN_INFO(...)          ::ECEN::Log::GetClientLogger()->info(__VA_ARGS__)
#define ECEN_WARN(...)          ::ECEN::Log::GetClientLogger()->warn(__VA_ARGS__)
#define ECEN_ERROR(...)         ::ECEN::Log::GetClientLogger()->error(__VA_ARGS__)


