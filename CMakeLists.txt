cmake_minimum_required(VERSION 3.15)
project(engine)

set(CMAKE_CXX_STANDARD 20)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_LIST_DIR}/bin)


set(ENGINE_LIB_FILES ${CMAKE_CURRENT_LIST_DIR}/lib/glew32s.lib
                     ${CMAKE_CURRENT_LIST_DIR}/lib/libglfw3.a
                     opengl32.lib)

# Group all source files under one definition
set(SOURCE_FILES src/ECENgine/Application.h
                 src/ECENgine/Application.cpp
                 src/ECENgine/EntryPoint.h)

if(WIN32)
    # Create a static library from the files within SOURCE_FILES
    add_library(windows ${SOURCE_FILES})
    target_compile_definitions(windows PRIVATE -DGLEW_STATIC)
    target_include_directories(windows PRIVATE includes)
    target_link_libraries(windows ${ENGINE_LIB_FILES})


    set(SANDBOX_FILES ${CMAKE_CURRENT_LIST_DIR}/Sandbox/sandbox.cpp)

    add_executable(engine ${SANDBOX_FILES})
    target_include_directories(engine PRIVATE src)
    target_link_libraries(engine PRIVATE windows)
endif(WIN32)