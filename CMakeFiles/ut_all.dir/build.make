# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /usr/local/lib/python2.7/dist-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /usr/local/lib/python2.7/dist-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table

# Include any dependencies generated for this target.
include CMakeFiles/ut_all.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ut_all.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ut_all.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ut_all.dir/flags.make

CMakeFiles/ut_all.dir/src/main.cpp.o: CMakeFiles/ut_all.dir/flags.make
CMakeFiles/ut_all.dir/src/main.cpp.o: src/main.cpp
CMakeFiles/ut_all.dir/src/main.cpp.o: CMakeFiles/ut_all.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ut_all.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ut_all.dir/src/main.cpp.o -MF CMakeFiles/ut_all.dir/src/main.cpp.o.d -o CMakeFiles/ut_all.dir/src/main.cpp.o -c /mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table/src/main.cpp

CMakeFiles/ut_all.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ut_all.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table/src/main.cpp > CMakeFiles/ut_all.dir/src/main.cpp.i

CMakeFiles/ut_all.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ut_all.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table/src/main.cpp -o CMakeFiles/ut_all.dir/src/main.cpp.s

# Object files for target ut_all
ut_all_OBJECTS = \
"CMakeFiles/ut_all.dir/src/main.cpp.o"

# External object files for target ut_all
ut_all_EXTERNAL_OBJECTS =

ut_all: CMakeFiles/ut_all.dir/src/main.cpp.o
ut_all: CMakeFiles/ut_all.dir/build.make
ut_all: lib/libgtest_main.a
ut_all: lib/libgtest.a
ut_all: CMakeFiles/ut_all.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ut_all"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ut_all.dir/link.txt --verbose=$(VERBOSE)
	/usr/local/lib/python2.7/dist-packages/cmake/data/bin/cmake -D TEST_TARGET=ut_all -D TEST_EXECUTABLE=/mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table/ut_all -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=ut_all_TESTS -D CTEST_FILE=/mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table/ut_all[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/local/lib/python2.7/dist-packages/cmake/data/share/cmake-3.27/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
CMakeFiles/ut_all.dir/build: ut_all
.PHONY : CMakeFiles/ut_all.dir/build

CMakeFiles/ut_all.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ut_all.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ut_all.dir/clean

CMakeFiles/ut_all.dir/depend:
	cd /mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table /mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table /mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table /mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table /mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table/CMakeFiles/ut_all.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ut_all.dir/depend

