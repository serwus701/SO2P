# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "E:\Programs\CLion 2022.3.3\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "E:\Programs\CLion 2022.3.3\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\Code\Studia\SO2P

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\Code\Studia\SO2P\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SO2_P.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SO2_P.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SO2_P.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SO2_P.dir/flags.make

CMakeFiles/SO2_P.dir/main.cpp.obj: CMakeFiles/SO2_P.dir/flags.make
CMakeFiles/SO2_P.dir/main.cpp.obj: E:/Code/Studia/SO2P/main.cpp
CMakeFiles/SO2_P.dir/main.cpp.obj: CMakeFiles/SO2_P.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Code\Studia\SO2P\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SO2_P.dir/main.cpp.obj"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SO2_P.dir/main.cpp.obj -MF CMakeFiles\SO2_P.dir\main.cpp.obj.d -o CMakeFiles\SO2_P.dir\main.cpp.obj -c E:\Code\Studia\SO2P\main.cpp

CMakeFiles/SO2_P.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SO2_P.dir/main.cpp.i"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\Code\Studia\SO2P\main.cpp > CMakeFiles\SO2_P.dir\main.cpp.i

CMakeFiles/SO2_P.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SO2_P.dir/main.cpp.s"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\Code\Studia\SO2P\main.cpp -o CMakeFiles\SO2_P.dir\main.cpp.s

CMakeFiles/SO2_P.dir/Bridge.cpp.obj: CMakeFiles/SO2_P.dir/flags.make
CMakeFiles/SO2_P.dir/Bridge.cpp.obj: E:/Code/Studia/SO2P/Bridge.cpp
CMakeFiles/SO2_P.dir/Bridge.cpp.obj: CMakeFiles/SO2_P.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Code\Studia\SO2P\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SO2_P.dir/Bridge.cpp.obj"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SO2_P.dir/Bridge.cpp.obj -MF CMakeFiles\SO2_P.dir\Bridge.cpp.obj.d -o CMakeFiles\SO2_P.dir\Bridge.cpp.obj -c E:\Code\Studia\SO2P\Bridge.cpp

CMakeFiles/SO2_P.dir/Bridge.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SO2_P.dir/Bridge.cpp.i"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\Code\Studia\SO2P\Bridge.cpp > CMakeFiles\SO2_P.dir\Bridge.cpp.i

CMakeFiles/SO2_P.dir/Bridge.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SO2_P.dir/Bridge.cpp.s"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\Code\Studia\SO2P\Bridge.cpp -o CMakeFiles\SO2_P.dir\Bridge.cpp.s

CMakeFiles/SO2_P.dir/Vehicle.cpp.obj: CMakeFiles/SO2_P.dir/flags.make
CMakeFiles/SO2_P.dir/Vehicle.cpp.obj: E:/Code/Studia/SO2P/Vehicle.cpp
CMakeFiles/SO2_P.dir/Vehicle.cpp.obj: CMakeFiles/SO2_P.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Code\Studia\SO2P\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SO2_P.dir/Vehicle.cpp.obj"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SO2_P.dir/Vehicle.cpp.obj -MF CMakeFiles\SO2_P.dir\Vehicle.cpp.obj.d -o CMakeFiles\SO2_P.dir\Vehicle.cpp.obj -c E:\Code\Studia\SO2P\Vehicle.cpp

CMakeFiles/SO2_P.dir/Vehicle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SO2_P.dir/Vehicle.cpp.i"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\Code\Studia\SO2P\Vehicle.cpp > CMakeFiles\SO2_P.dir\Vehicle.cpp.i

CMakeFiles/SO2_P.dir/Vehicle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SO2_P.dir/Vehicle.cpp.s"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\Code\Studia\SO2P\Vehicle.cpp -o CMakeFiles\SO2_P.dir\Vehicle.cpp.s

CMakeFiles/SO2_P.dir/Controller.cpp.obj: CMakeFiles/SO2_P.dir/flags.make
CMakeFiles/SO2_P.dir/Controller.cpp.obj: E:/Code/Studia/SO2P/Controller.cpp
CMakeFiles/SO2_P.dir/Controller.cpp.obj: CMakeFiles/SO2_P.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Code\Studia\SO2P\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SO2_P.dir/Controller.cpp.obj"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SO2_P.dir/Controller.cpp.obj -MF CMakeFiles\SO2_P.dir\Controller.cpp.obj.d -o CMakeFiles\SO2_P.dir\Controller.cpp.obj -c E:\Code\Studia\SO2P\Controller.cpp

CMakeFiles/SO2_P.dir/Controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SO2_P.dir/Controller.cpp.i"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\Code\Studia\SO2P\Controller.cpp > CMakeFiles\SO2_P.dir\Controller.cpp.i

CMakeFiles/SO2_P.dir/Controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SO2_P.dir/Controller.cpp.s"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\Code\Studia\SO2P\Controller.cpp -o CMakeFiles\SO2_P.dir\Controller.cpp.s

CMakeFiles/SO2_P.dir/Random.cpp.obj: CMakeFiles/SO2_P.dir/flags.make
CMakeFiles/SO2_P.dir/Random.cpp.obj: E:/Code/Studia/SO2P/Random.cpp
CMakeFiles/SO2_P.dir/Random.cpp.obj: CMakeFiles/SO2_P.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Code\Studia\SO2P\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SO2_P.dir/Random.cpp.obj"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SO2_P.dir/Random.cpp.obj -MF CMakeFiles\SO2_P.dir\Random.cpp.obj.d -o CMakeFiles\SO2_P.dir\Random.cpp.obj -c E:\Code\Studia\SO2P\Random.cpp

CMakeFiles/SO2_P.dir/Random.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SO2_P.dir/Random.cpp.i"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\Code\Studia\SO2P\Random.cpp > CMakeFiles\SO2_P.dir\Random.cpp.i

CMakeFiles/SO2_P.dir/Random.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SO2_P.dir/Random.cpp.s"
	"E:\Programs\CLion 2022.3.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\Code\Studia\SO2P\Random.cpp -o CMakeFiles\SO2_P.dir\Random.cpp.s

# Object files for target SO2_P
SO2_P_OBJECTS = \
"CMakeFiles/SO2_P.dir/main.cpp.obj" \
"CMakeFiles/SO2_P.dir/Bridge.cpp.obj" \
"CMakeFiles/SO2_P.dir/Vehicle.cpp.obj" \
"CMakeFiles/SO2_P.dir/Controller.cpp.obj" \
"CMakeFiles/SO2_P.dir/Random.cpp.obj"

# External object files for target SO2_P
SO2_P_EXTERNAL_OBJECTS =

SO2_P.exe: CMakeFiles/SO2_P.dir/main.cpp.obj
SO2_P.exe: CMakeFiles/SO2_P.dir/Bridge.cpp.obj
SO2_P.exe: CMakeFiles/SO2_P.dir/Vehicle.cpp.obj
SO2_P.exe: CMakeFiles/SO2_P.dir/Controller.cpp.obj
SO2_P.exe: CMakeFiles/SO2_P.dir/Random.cpp.obj
SO2_P.exe: CMakeFiles/SO2_P.dir/build.make
SO2_P.exe: CMakeFiles/SO2_P.dir/linklibs.rsp
SO2_P.exe: CMakeFiles/SO2_P.dir/objects1.rsp
SO2_P.exe: CMakeFiles/SO2_P.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\Code\Studia\SO2P\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable SO2_P.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\SO2_P.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SO2_P.dir/build: SO2_P.exe
.PHONY : CMakeFiles/SO2_P.dir/build

CMakeFiles/SO2_P.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\SO2_P.dir\cmake_clean.cmake
.PHONY : CMakeFiles/SO2_P.dir/clean

CMakeFiles/SO2_P.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\Code\Studia\SO2P E:\Code\Studia\SO2P E:\Code\Studia\SO2P\cmake-build-debug E:\Code\Studia\SO2P\cmake-build-debug E:\Code\Studia\SO2P\cmake-build-debug\CMakeFiles\SO2_P.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SO2_P.dir/depend

