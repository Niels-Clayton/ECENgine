# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\niels\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\193.5662.56\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\niels\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\193.5662.56\bin\cmake\win\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Dev\engine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Dev\engine\build

# Include any dependencies generated for this target.
include CMakeFiles/engine.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/engine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/engine.dir/flags.make

CMakeFiles/engine.dir/sandbox.cpp.obj: CMakeFiles/engine.dir/flags.make
CMakeFiles/engine.dir/sandbox.cpp.obj: CMakeFiles/engine.dir/includes_CXX.rsp
CMakeFiles/engine.dir/sandbox.cpp.obj: ../sandbox.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Dev\engine\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/engine.dir/sandbox.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\engine.dir\sandbox.cpp.obj -c C:\Dev\engine\sandbox.cpp

CMakeFiles/engine.dir/sandbox.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/engine.dir/sandbox.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Dev\engine\sandbox.cpp > CMakeFiles\engine.dir\sandbox.cpp.i

CMakeFiles/engine.dir/sandbox.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/engine.dir/sandbox.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Dev\engine\sandbox.cpp -o CMakeFiles\engine.dir\sandbox.cpp.s

# Object files for target engine
engine_OBJECTS = \
"CMakeFiles/engine.dir/sandbox.cpp.obj"

# External object files for target engine
engine_EXTERNAL_OBJECTS =

../bin/engine.exe: CMakeFiles/engine.dir/sandbox.cpp.obj
../bin/engine.exe: CMakeFiles/engine.dir/build.make
../bin/engine.exe: ../lib/libwindows.a
../bin/engine.exe: ../lib/glew32s.lib
../bin/engine.exe: ../lib/libglfw3.a
../bin/engine.exe: CMakeFiles/engine.dir/linklibs.rsp
../bin/engine.exe: CMakeFiles/engine.dir/objects1.rsp
../bin/engine.exe: CMakeFiles/engine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Dev\engine\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\bin\engine.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\engine.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/engine.dir/build: ../bin/engine.exe

.PHONY : CMakeFiles/engine.dir/build

CMakeFiles/engine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\engine.dir\cmake_clean.cmake
.PHONY : CMakeFiles/engine.dir/clean

CMakeFiles/engine.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Dev\engine C:\Dev\engine C:\Dev\engine\build C:\Dev\engine\build C:\Dev\engine\build\CMakeFiles\engine.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/engine.dir/depend
