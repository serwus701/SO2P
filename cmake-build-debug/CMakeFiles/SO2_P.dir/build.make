# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion-2023.1.3/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /opt/clion-2023.1.3/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/advinek22/Desktop/SO2-Projekt-2/SO2P

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/advinek22/Desktop/SO2-Projekt-2/SO2P/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SO2_P.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SO2_P.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SO2_P.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SO2_P.dir/flags.make

CMakeFiles/SO2_P.dir/main.cpp.o: CMakeFiles/SO2_P.dir/flags.make
CMakeFiles/SO2_P.dir/main.cpp.o: /home/advinek22/Desktop/SO2-Projekt-2/SO2P/main.cpp
CMakeFiles/SO2_P.dir/main.cpp.o: CMakeFiles/SO2_P.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/advinek22/Desktop/SO2-Projekt-2/SO2P/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SO2_P.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SO2_P.dir/main.cpp.o -MF CMakeFiles/SO2_P.dir/main.cpp.o.d -o CMakeFiles/SO2_P.dir/main.cpp.o -c /home/advinek22/Desktop/SO2-Projekt-2/SO2P/main.cpp

CMakeFiles/SO2_P.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SO2_P.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/advinek22/Desktop/SO2-Projekt-2/SO2P/main.cpp > CMakeFiles/SO2_P.dir/main.cpp.i

CMakeFiles/SO2_P.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SO2_P.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/advinek22/Desktop/SO2-Projekt-2/SO2P/main.cpp -o CMakeFiles/SO2_P.dir/main.cpp.s

CMakeFiles/SO2_P.dir/Bridge.cpp.o: CMakeFiles/SO2_P.dir/flags.make
CMakeFiles/SO2_P.dir/Bridge.cpp.o: /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Bridge.cpp
CMakeFiles/SO2_P.dir/Bridge.cpp.o: CMakeFiles/SO2_P.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/advinek22/Desktop/SO2-Projekt-2/SO2P/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SO2_P.dir/Bridge.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SO2_P.dir/Bridge.cpp.o -MF CMakeFiles/SO2_P.dir/Bridge.cpp.o.d -o CMakeFiles/SO2_P.dir/Bridge.cpp.o -c /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Bridge.cpp

CMakeFiles/SO2_P.dir/Bridge.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SO2_P.dir/Bridge.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Bridge.cpp > CMakeFiles/SO2_P.dir/Bridge.cpp.i

CMakeFiles/SO2_P.dir/Bridge.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SO2_P.dir/Bridge.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Bridge.cpp -o CMakeFiles/SO2_P.dir/Bridge.cpp.s

CMakeFiles/SO2_P.dir/Vehicle.cpp.o: CMakeFiles/SO2_P.dir/flags.make
CMakeFiles/SO2_P.dir/Vehicle.cpp.o: /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Vehicle.cpp
CMakeFiles/SO2_P.dir/Vehicle.cpp.o: CMakeFiles/SO2_P.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/advinek22/Desktop/SO2-Projekt-2/SO2P/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SO2_P.dir/Vehicle.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SO2_P.dir/Vehicle.cpp.o -MF CMakeFiles/SO2_P.dir/Vehicle.cpp.o.d -o CMakeFiles/SO2_P.dir/Vehicle.cpp.o -c /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Vehicle.cpp

CMakeFiles/SO2_P.dir/Vehicle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SO2_P.dir/Vehicle.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Vehicle.cpp > CMakeFiles/SO2_P.dir/Vehicle.cpp.i

CMakeFiles/SO2_P.dir/Vehicle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SO2_P.dir/Vehicle.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Vehicle.cpp -o CMakeFiles/SO2_P.dir/Vehicle.cpp.s

CMakeFiles/SO2_P.dir/Controller.cpp.o: CMakeFiles/SO2_P.dir/flags.make
CMakeFiles/SO2_P.dir/Controller.cpp.o: /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Controller.cpp
CMakeFiles/SO2_P.dir/Controller.cpp.o: CMakeFiles/SO2_P.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/advinek22/Desktop/SO2-Projekt-2/SO2P/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SO2_P.dir/Controller.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SO2_P.dir/Controller.cpp.o -MF CMakeFiles/SO2_P.dir/Controller.cpp.o.d -o CMakeFiles/SO2_P.dir/Controller.cpp.o -c /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Controller.cpp

CMakeFiles/SO2_P.dir/Controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SO2_P.dir/Controller.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Controller.cpp > CMakeFiles/SO2_P.dir/Controller.cpp.i

CMakeFiles/SO2_P.dir/Controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SO2_P.dir/Controller.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Controller.cpp -o CMakeFiles/SO2_P.dir/Controller.cpp.s

CMakeFiles/SO2_P.dir/Random.cpp.o: CMakeFiles/SO2_P.dir/flags.make
CMakeFiles/SO2_P.dir/Random.cpp.o: /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Random.cpp
CMakeFiles/SO2_P.dir/Random.cpp.o: CMakeFiles/SO2_P.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/advinek22/Desktop/SO2-Projekt-2/SO2P/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SO2_P.dir/Random.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SO2_P.dir/Random.cpp.o -MF CMakeFiles/SO2_P.dir/Random.cpp.o.d -o CMakeFiles/SO2_P.dir/Random.cpp.o -c /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Random.cpp

CMakeFiles/SO2_P.dir/Random.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SO2_P.dir/Random.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Random.cpp > CMakeFiles/SO2_P.dir/Random.cpp.i

CMakeFiles/SO2_P.dir/Random.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SO2_P.dir/Random.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/advinek22/Desktop/SO2-Projekt-2/SO2P/Random.cpp -o CMakeFiles/SO2_P.dir/Random.cpp.s

# Object files for target SO2_P
SO2_P_OBJECTS = \
"CMakeFiles/SO2_P.dir/main.cpp.o" \
"CMakeFiles/SO2_P.dir/Bridge.cpp.o" \
"CMakeFiles/SO2_P.dir/Vehicle.cpp.o" \
"CMakeFiles/SO2_P.dir/Controller.cpp.o" \
"CMakeFiles/SO2_P.dir/Random.cpp.o"

# External object files for target SO2_P
SO2_P_EXTERNAL_OBJECTS =

SO2_P: CMakeFiles/SO2_P.dir/main.cpp.o
SO2_P: CMakeFiles/SO2_P.dir/Bridge.cpp.o
SO2_P: CMakeFiles/SO2_P.dir/Vehicle.cpp.o
SO2_P: CMakeFiles/SO2_P.dir/Controller.cpp.o
SO2_P: CMakeFiles/SO2_P.dir/Random.cpp.o
SO2_P: CMakeFiles/SO2_P.dir/build.make
SO2_P: CMakeFiles/SO2_P.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/advinek22/Desktop/SO2-Projekt-2/SO2P/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable SO2_P"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SO2_P.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SO2_P.dir/build: SO2_P
.PHONY : CMakeFiles/SO2_P.dir/build

CMakeFiles/SO2_P.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SO2_P.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SO2_P.dir/clean

CMakeFiles/SO2_P.dir/depend:
	cd /home/advinek22/Desktop/SO2-Projekt-2/SO2P/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/advinek22/Desktop/SO2-Projekt-2/SO2P /home/advinek22/Desktop/SO2-Projekt-2/SO2P /home/advinek22/Desktop/SO2-Projekt-2/SO2P/cmake-build-debug /home/advinek22/Desktop/SO2-Projekt-2/SO2P/cmake-build-debug /home/advinek22/Desktop/SO2-Projekt-2/SO2P/cmake-build-debug/CMakeFiles/SO2_P.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SO2_P.dir/depend

