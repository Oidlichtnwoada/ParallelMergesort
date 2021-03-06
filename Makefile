# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_COMMAND = /usr/bin/cmake.exe

# The command to remove a file.
RM = /usr/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/hanne/Desktop/parmerge-student-1.0.0-Source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/hanne/Desktop/parmerge-student-1.0.0-Source

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target package_source
package_source:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool for source..."
	/usr/bin/cpack.exe --config ./CPackSourceConfig.cmake /cygdrive/c/Users/hanne/Desktop/parmerge-student-1.0.0-Source/CPackSourceConfig.cmake
.PHONY : package_source

# Special rule for the target package_source
package_source/fast: package_source

.PHONY : package_source/fast

# Special rule for the target package
package: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool..."
	/usr/bin/cpack.exe --config ./CPackConfig.cmake
.PHONY : package

# Special rule for the target package
package/fast: package

.PHONY : package/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake.exe -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake.exe -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /cygdrive/c/Users/hanne/Desktop/parmerge-student-1.0.0-Source/CMakeFiles /cygdrive/c/Users/hanne/Desktop/parmerge-student-1.0.0-Source/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /cygdrive/c/Users/hanne/Desktop/parmerge-student-1.0.0-Source/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named parmerge_tester

# Build rule for target.
parmerge_tester: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 parmerge_tester
.PHONY : parmerge_tester

# fast build rule for target.
parmerge_tester/fast:
	$(MAKE) -f CMakeFiles/parmerge_tester.dir/build.make CMakeFiles/parmerge_tester.dir/build
.PHONY : parmerge_tester/fast

#=============================================================================
# Target rules for targets named parmergesort_tester

# Build rule for target.
parmergesort_tester: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 parmergesort_tester
.PHONY : parmergesort_tester

# fast build rule for target.
parmergesort_tester/fast:
	$(MAKE) -f CMakeFiles/parmergesort_tester.dir/build.make CMakeFiles/parmergesort_tester.dir/build
.PHONY : parmergesort_tester/fast

src/parmerge_template.o: src/parmerge_template.c.o

.PHONY : src/parmerge_template.o

# target to build an object file
src/parmerge_template.c.o:
	$(MAKE) -f CMakeFiles/parmerge_tester.dir/build.make CMakeFiles/parmerge_tester.dir/src/parmerge_template.c.o
	$(MAKE) -f CMakeFiles/parmergesort_tester.dir/build.make CMakeFiles/parmergesort_tester.dir/src/parmerge_template.c.o
.PHONY : src/parmerge_template.c.o

src/parmerge_template.i: src/parmerge_template.c.i

.PHONY : src/parmerge_template.i

# target to preprocess a source file
src/parmerge_template.c.i:
	$(MAKE) -f CMakeFiles/parmerge_tester.dir/build.make CMakeFiles/parmerge_tester.dir/src/parmerge_template.c.i
	$(MAKE) -f CMakeFiles/parmergesort_tester.dir/build.make CMakeFiles/parmergesort_tester.dir/src/parmerge_template.c.i
.PHONY : src/parmerge_template.c.i

src/parmerge_template.s: src/parmerge_template.c.s

.PHONY : src/parmerge_template.s

# target to generate assembly for a file
src/parmerge_template.c.s:
	$(MAKE) -f CMakeFiles/parmerge_tester.dir/build.make CMakeFiles/parmerge_tester.dir/src/parmerge_template.c.s
	$(MAKE) -f CMakeFiles/parmergesort_tester.dir/build.make CMakeFiles/parmergesort_tester.dir/src/parmerge_template.c.s
.PHONY : src/parmerge_template.c.s

src/parmerge_tester.o: src/parmerge_tester.c.o

.PHONY : src/parmerge_tester.o

# target to build an object file
src/parmerge_tester.c.o:
	$(MAKE) -f CMakeFiles/parmerge_tester.dir/build.make CMakeFiles/parmerge_tester.dir/src/parmerge_tester.c.o
.PHONY : src/parmerge_tester.c.o

src/parmerge_tester.i: src/parmerge_tester.c.i

.PHONY : src/parmerge_tester.i

# target to preprocess a source file
src/parmerge_tester.c.i:
	$(MAKE) -f CMakeFiles/parmerge_tester.dir/build.make CMakeFiles/parmerge_tester.dir/src/parmerge_tester.c.i
.PHONY : src/parmerge_tester.c.i

src/parmerge_tester.s: src/parmerge_tester.c.s

.PHONY : src/parmerge_tester.s

# target to generate assembly for a file
src/parmerge_tester.c.s:
	$(MAKE) -f CMakeFiles/parmerge_tester.dir/build.make CMakeFiles/parmerge_tester.dir/src/parmerge_tester.c.s
.PHONY : src/parmerge_tester.c.s

src/parmergesort_template.o: src/parmergesort_template.c.o

.PHONY : src/parmergesort_template.o

# target to build an object file
src/parmergesort_template.c.o:
	$(MAKE) -f CMakeFiles/parmergesort_tester.dir/build.make CMakeFiles/parmergesort_tester.dir/src/parmergesort_template.c.o
.PHONY : src/parmergesort_template.c.o

src/parmergesort_template.i: src/parmergesort_template.c.i

.PHONY : src/parmergesort_template.i

# target to preprocess a source file
src/parmergesort_template.c.i:
	$(MAKE) -f CMakeFiles/parmergesort_tester.dir/build.make CMakeFiles/parmergesort_tester.dir/src/parmergesort_template.c.i
.PHONY : src/parmergesort_template.c.i

src/parmergesort_template.s: src/parmergesort_template.c.s

.PHONY : src/parmergesort_template.s

# target to generate assembly for a file
src/parmergesort_template.c.s:
	$(MAKE) -f CMakeFiles/parmergesort_tester.dir/build.make CMakeFiles/parmergesort_tester.dir/src/parmergesort_template.c.s
.PHONY : src/parmergesort_template.c.s

src/parmergesort_tester.o: src/parmergesort_tester.c.o

.PHONY : src/parmergesort_tester.o

# target to build an object file
src/parmergesort_tester.c.o:
	$(MAKE) -f CMakeFiles/parmergesort_tester.dir/build.make CMakeFiles/parmergesort_tester.dir/src/parmergesort_tester.c.o
.PHONY : src/parmergesort_tester.c.o

src/parmergesort_tester.i: src/parmergesort_tester.c.i

.PHONY : src/parmergesort_tester.i

# target to preprocess a source file
src/parmergesort_tester.c.i:
	$(MAKE) -f CMakeFiles/parmergesort_tester.dir/build.make CMakeFiles/parmergesort_tester.dir/src/parmergesort_tester.c.i
.PHONY : src/parmergesort_tester.c.i

src/parmergesort_tester.s: src/parmergesort_tester.c.s

.PHONY : src/parmergesort_tester.s

# target to generate assembly for a file
src/parmergesort_tester.c.s:
	$(MAKE) -f CMakeFiles/parmergesort_tester.dir/build.make CMakeFiles/parmergesort_tester.dir/src/parmergesort_tester.c.s
.PHONY : src/parmergesort_tester.c.s

src/seq_common.o: src/seq_common.c.o

.PHONY : src/seq_common.o

# target to build an object file
src/seq_common.c.o:
	$(MAKE) -f CMakeFiles/parmerge_tester.dir/build.make CMakeFiles/parmerge_tester.dir/src/seq_common.c.o
	$(MAKE) -f CMakeFiles/parmergesort_tester.dir/build.make CMakeFiles/parmergesort_tester.dir/src/seq_common.c.o
.PHONY : src/seq_common.c.o

src/seq_common.i: src/seq_common.c.i

.PHONY : src/seq_common.i

# target to preprocess a source file
src/seq_common.c.i:
	$(MAKE) -f CMakeFiles/parmerge_tester.dir/build.make CMakeFiles/parmerge_tester.dir/src/seq_common.c.i
	$(MAKE) -f CMakeFiles/parmergesort_tester.dir/build.make CMakeFiles/parmergesort_tester.dir/src/seq_common.c.i
.PHONY : src/seq_common.c.i

src/seq_common.s: src/seq_common.c.s

.PHONY : src/seq_common.s

# target to generate assembly for a file
src/seq_common.c.s:
	$(MAKE) -f CMakeFiles/parmerge_tester.dir/build.make CMakeFiles/parmerge_tester.dir/src/seq_common.c.s
	$(MAKE) -f CMakeFiles/parmergesort_tester.dir/build.make CMakeFiles/parmergesort_tester.dir/src/seq_common.c.s
.PHONY : src/seq_common.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... package_source"
	@echo "... package"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... parmerge_tester"
	@echo "... parmergesort_tester"
	@echo "... src/parmerge_template.o"
	@echo "... src/parmerge_template.i"
	@echo "... src/parmerge_template.s"
	@echo "... src/parmerge_tester.o"
	@echo "... src/parmerge_tester.i"
	@echo "... src/parmerge_tester.s"
	@echo "... src/parmergesort_template.o"
	@echo "... src/parmergesort_template.i"
	@echo "... src/parmergesort_template.s"
	@echo "... src/parmergesort_tester.o"
	@echo "... src/parmergesort_tester.i"
	@echo "... src/parmergesort_tester.s"
	@echo "... src/seq_common.o"
	@echo "... src/seq_common.i"
	@echo "... src/seq_common.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

