# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hawas/Embedded_Systems/CMake/CMake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hawas/Embedded_Systems/CMake/CMake/build

# Utility rule file for binary.

# Include the progress variables for this target.
include CMakeFiles/binary.dir/progress.make

CMakeFiles/binary: CMake
	arm-none-eabi-objcopy -O binary CMake CMake.bin

binary: CMakeFiles/binary
binary: CMakeFiles/binary.dir/build.make

.PHONY : binary

# Rule to build all files generated by this target.
CMakeFiles/binary.dir/build: binary

.PHONY : CMakeFiles/binary.dir/build

CMakeFiles/binary.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/binary.dir/cmake_clean.cmake
.PHONY : CMakeFiles/binary.dir/clean

CMakeFiles/binary.dir/depend:
	cd /home/hawas/Embedded_Systems/CMake/CMake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hawas/Embedded_Systems/CMake/CMake /home/hawas/Embedded_Systems/CMake/CMake /home/hawas/Embedded_Systems/CMake/CMake/build /home/hawas/Embedded_Systems/CMake/CMake/build /home/hawas/Embedded_Systems/CMake/CMake/build/CMakeFiles/binary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/binary.dir/depend

