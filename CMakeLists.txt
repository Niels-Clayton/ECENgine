cmake_minimum_required(VERSION 3.14)
project(ECENgine)

set(CMAKE_CXX_STANDARD 20)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_LIST_DIR}/bin)


set(ENGINE_LIB_FILES ${CMAKE_CURRENT_LIST_DIR}/lib/glew32s.lib
                     ${CMAKE_CURRENT_LIST_DIR}/lib/libglfw3.a
                     opengl32.lib)

# Group all source files under one definition
set(SOURCE_FILES src/ECENgine.h
                 src/ECENgine/Application.h
                 src/ECENgine/Application.cpp
                 src/ECENgine/EntryPoint.h
                 src/ECENgine/Log.cpp
                 src/ECENgine/Log.h)

set(ENGINE_INCLUDE_DIR module/spdlog/include
                       includes)

set(SANDBOX_INCLUDE_DIR module/spdlog/include
                        src)

if(WIN32)
    # Create a static library from the files within SOURCE_FILES
    add_library(ECENgine ${SOURCE_FILES})
    target_compile_definitions(ECENgine PRIVATE -DGLEW_STATIC)
    target_include_directories(ECENgine PRIVATE ${ENGINE_INCLUDE_DIR})
    target_link_libraries(ECENgine ${ENGINE_LIB_FILES})


    set(SANDBOX_FILES Sandbox/sandbox.cpp)

    add_executable(sandbox ${SANDBOX_FILES})
    target_include_directories(sandbox PRIVATE ${SANDBOX_INCLUDE_DIR})
    target_link_libraries(sandbox PRIVATE ECENgine)
endif(WIN32)