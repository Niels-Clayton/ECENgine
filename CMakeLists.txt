cmake_minimum_required(VERSION 3.15)
project(engine)

set(CMAKE_CXX_STANDARD 20)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_LIST_DIR}/bin)


# Set source file directory
set(src ${CMAKE_CURRENT_LIST_DIR}/src)
# Set header includes directory
set(includes ${CMAKE_CURRENT_LIST_DIR}/includes)
# Group all source files under one definition
set(SOURCE_FILES ${src}/engine.cpp
                 ${src}/engine.hh)

set(ENGINE_LIB_FILES ${CMAKE_CURRENT_LIST_DIR}/lib/glew32s.lib
              ${CMAKE_CURRENT_LIST_DIR}/lib/libglfw3.a
              opengl32.lib)

# Create an executable from the files listed in 'SOURCE_FILES'
add_executable(engine sandbox.cpp)
target_include_directories(engine PRIVATE ${src})


if(WIN32)
    add_library(windows ${SOURCE_FILES})
    target_include_directories(windows PRIVATE ${includes})
    target_compile_definitions(windows PRIVATE -DGLEW_STATIC)
    target_link_libraries(windows ${ENGINE_LIB_FILES})
    target_link_libraries(engine PRIVATE windows)
endif(WIN32)


if(UNIX)
    add_library(linux ${SOURCE_FILES})
    target_include_directories(linux PRIVATE ${includes})
    target_compile_definitions(linux PRIVATE -DGLEW_STATIC)
    target_link_libraries(linux ${ENGINE_LIB_FILES})
    target_link_libraries(engine PRIVATE windows)
endif(UNIX)