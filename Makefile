# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alex/drexel/research/heimdall

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alex/drexel/research/heimdall

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/alex/drexel/research/heimdall/CMakeFiles /home/alex/drexel/research/heimdall/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/alex/drexel/research/heimdall/CMakeFiles 0
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
# Target rules for targets named basic_test

# Build rule for target.
basic_test: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 basic_test
.PHONY : basic_test

# fast build rule for target.
basic_test/fast:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/build
.PHONY : basic_test/fast

src/sensor_data/sensor_data.o: src/sensor_data/sensor_data.cpp.o

.PHONY : src/sensor_data/sensor_data.o

# target to build an object file
src/sensor_data/sensor_data.cpp.o:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_data/sensor_data.cpp.o
.PHONY : src/sensor_data/sensor_data.cpp.o

src/sensor_data/sensor_data.i: src/sensor_data/sensor_data.cpp.i

.PHONY : src/sensor_data/sensor_data.i

# target to preprocess a source file
src/sensor_data/sensor_data.cpp.i:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_data/sensor_data.cpp.i
.PHONY : src/sensor_data/sensor_data.cpp.i

src/sensor_data/sensor_data.s: src/sensor_data/sensor_data.cpp.s

.PHONY : src/sensor_data/sensor_data.s

# target to generate assembly for a file
src/sensor_data/sensor_data.cpp.s:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_data/sensor_data.cpp.s
.PHONY : src/sensor_data/sensor_data.cpp.s

src/sensor_observers/data_records/data_record.o: src/sensor_observers/data_records/data_record.cpp.o

.PHONY : src/sensor_observers/data_records/data_record.o

# target to build an object file
src/sensor_observers/data_records/data_record.cpp.o:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_observers/data_records/data_record.cpp.o
.PHONY : src/sensor_observers/data_records/data_record.cpp.o

src/sensor_observers/data_records/data_record.i: src/sensor_observers/data_records/data_record.cpp.i

.PHONY : src/sensor_observers/data_records/data_record.i

# target to preprocess a source file
src/sensor_observers/data_records/data_record.cpp.i:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_observers/data_records/data_record.cpp.i
.PHONY : src/sensor_observers/data_records/data_record.cpp.i

src/sensor_observers/data_records/data_record.s: src/sensor_observers/data_records/data_record.cpp.s

.PHONY : src/sensor_observers/data_records/data_record.s

# target to generate assembly for a file
src/sensor_observers/data_records/data_record.cpp.s:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_observers/data_records/data_record.cpp.s
.PHONY : src/sensor_observers/data_records/data_record.cpp.s

src/sensor_observers/data_records/linux/linux_syscall_record.o: src/sensor_observers/data_records/linux/linux_syscall_record.cpp.o

.PHONY : src/sensor_observers/data_records/linux/linux_syscall_record.o

# target to build an object file
src/sensor_observers/data_records/linux/linux_syscall_record.cpp.o:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_observers/data_records/linux/linux_syscall_record.cpp.o
.PHONY : src/sensor_observers/data_records/linux/linux_syscall_record.cpp.o

src/sensor_observers/data_records/linux/linux_syscall_record.i: src/sensor_observers/data_records/linux/linux_syscall_record.cpp.i

.PHONY : src/sensor_observers/data_records/linux/linux_syscall_record.i

# target to preprocess a source file
src/sensor_observers/data_records/linux/linux_syscall_record.cpp.i:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_observers/data_records/linux/linux_syscall_record.cpp.i
.PHONY : src/sensor_observers/data_records/linux/linux_syscall_record.cpp.i

src/sensor_observers/data_records/linux/linux_syscall_record.s: src/sensor_observers/data_records/linux/linux_syscall_record.cpp.s

.PHONY : src/sensor_observers/data_records/linux/linux_syscall_record.s

# target to generate assembly for a file
src/sensor_observers/data_records/linux/linux_syscall_record.cpp.s:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_observers/data_records/linux/linux_syscall_record.cpp.s
.PHONY : src/sensor_observers/data_records/linux/linux_syscall_record.cpp.s

src/sensor_observers/data_streams/output_stream.o: src/sensor_observers/data_streams/output_stream.cpp.o

.PHONY : src/sensor_observers/data_streams/output_stream.o

# target to build an object file
src/sensor_observers/data_streams/output_stream.cpp.o:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_observers/data_streams/output_stream.cpp.o
.PHONY : src/sensor_observers/data_streams/output_stream.cpp.o

src/sensor_observers/data_streams/output_stream.i: src/sensor_observers/data_streams/output_stream.cpp.i

.PHONY : src/sensor_observers/data_streams/output_stream.i

# target to preprocess a source file
src/sensor_observers/data_streams/output_stream.cpp.i:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_observers/data_streams/output_stream.cpp.i
.PHONY : src/sensor_observers/data_streams/output_stream.cpp.i

src/sensor_observers/data_streams/output_stream.s: src/sensor_observers/data_streams/output_stream.cpp.s

.PHONY : src/sensor_observers/data_streams/output_stream.s

# target to generate assembly for a file
src/sensor_observers/data_streams/output_stream.cpp.s:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_observers/data_streams/output_stream.cpp.s
.PHONY : src/sensor_observers/data_streams/output_stream.cpp.s

src/sensor_observers/syscall_logger.o: src/sensor_observers/syscall_logger.cpp.o

.PHONY : src/sensor_observers/syscall_logger.o

# target to build an object file
src/sensor_observers/syscall_logger.cpp.o:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_observers/syscall_logger.cpp.o
.PHONY : src/sensor_observers/syscall_logger.cpp.o

src/sensor_observers/syscall_logger.i: src/sensor_observers/syscall_logger.cpp.i

.PHONY : src/sensor_observers/syscall_logger.i

# target to preprocess a source file
src/sensor_observers/syscall_logger.cpp.i:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_observers/syscall_logger.cpp.i
.PHONY : src/sensor_observers/syscall_logger.cpp.i

src/sensor_observers/syscall_logger.s: src/sensor_observers/syscall_logger.cpp.s

.PHONY : src/sensor_observers/syscall_logger.s

# target to generate assembly for a file
src/sensor_observers/syscall_logger.cpp.s:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensor_observers/syscall_logger.cpp.s
.PHONY : src/sensor_observers/syscall_logger.cpp.s

src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.o: src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.cpp.o

.PHONY : src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.o

# target to build an object file
src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.cpp.o:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.cpp.o
.PHONY : src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.cpp.o

src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.i: src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.cpp.i

.PHONY : src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.i

# target to preprocess a source file
src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.cpp.i:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.cpp.i
.PHONY : src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.cpp.i

src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.s: src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.cpp.s

.PHONY : src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.s

# target to generate assembly for a file
src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.cpp.s:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.cpp.s
.PHONY : src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.cpp.s

src/sensors/syscall_sensors/syscall_readers/reader_factory.o: src/sensors/syscall_sensors/syscall_readers/reader_factory.cpp.o

.PHONY : src/sensors/syscall_sensors/syscall_readers/reader_factory.o

# target to build an object file
src/sensors/syscall_sensors/syscall_readers/reader_factory.cpp.o:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensors/syscall_sensors/syscall_readers/reader_factory.cpp.o
.PHONY : src/sensors/syscall_sensors/syscall_readers/reader_factory.cpp.o

src/sensors/syscall_sensors/syscall_readers/reader_factory.i: src/sensors/syscall_sensors/syscall_readers/reader_factory.cpp.i

.PHONY : src/sensors/syscall_sensors/syscall_readers/reader_factory.i

# target to preprocess a source file
src/sensors/syscall_sensors/syscall_readers/reader_factory.cpp.i:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensors/syscall_sensors/syscall_readers/reader_factory.cpp.i
.PHONY : src/sensors/syscall_sensors/syscall_readers/reader_factory.cpp.i

src/sensors/syscall_sensors/syscall_readers/reader_factory.s: src/sensors/syscall_sensors/syscall_readers/reader_factory.cpp.s

.PHONY : src/sensors/syscall_sensors/syscall_readers/reader_factory.s

# target to generate assembly for a file
src/sensors/syscall_sensors/syscall_readers/reader_factory.cpp.s:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensors/syscall_sensors/syscall_readers/reader_factory.cpp.s
.PHONY : src/sensors/syscall_sensors/syscall_readers/reader_factory.cpp.s

src/sensors/syscall_sensors/syscall_sensor.o: src/sensors/syscall_sensors/syscall_sensor.cpp.o

.PHONY : src/sensors/syscall_sensors/syscall_sensor.o

# target to build an object file
src/sensors/syscall_sensors/syscall_sensor.cpp.o:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensors/syscall_sensors/syscall_sensor.cpp.o
.PHONY : src/sensors/syscall_sensors/syscall_sensor.cpp.o

src/sensors/syscall_sensors/syscall_sensor.i: src/sensors/syscall_sensors/syscall_sensor.cpp.i

.PHONY : src/sensors/syscall_sensors/syscall_sensor.i

# target to preprocess a source file
src/sensors/syscall_sensors/syscall_sensor.cpp.i:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensors/syscall_sensors/syscall_sensor.cpp.i
.PHONY : src/sensors/syscall_sensors/syscall_sensor.cpp.i

src/sensors/syscall_sensors/syscall_sensor.s: src/sensors/syscall_sensors/syscall_sensor.cpp.s

.PHONY : src/sensors/syscall_sensors/syscall_sensor.s

# target to generate assembly for a file
src/sensors/syscall_sensors/syscall_sensor.cpp.s:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/sensors/syscall_sensors/syscall_sensor.cpp.s
.PHONY : src/sensors/syscall_sensors/syscall_sensor.cpp.s

src/tests/basic_test.o: src/tests/basic_test.cpp.o

.PHONY : src/tests/basic_test.o

# target to build an object file
src/tests/basic_test.cpp.o:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/tests/basic_test.cpp.o
.PHONY : src/tests/basic_test.cpp.o

src/tests/basic_test.i: src/tests/basic_test.cpp.i

.PHONY : src/tests/basic_test.i

# target to preprocess a source file
src/tests/basic_test.cpp.i:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/tests/basic_test.cpp.i
.PHONY : src/tests/basic_test.cpp.i

src/tests/basic_test.s: src/tests/basic_test.cpp.s

.PHONY : src/tests/basic_test.s

# target to generate assembly for a file
src/tests/basic_test.cpp.s:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/tests/basic_test.cpp.s
.PHONY : src/tests/basic_test.cpp.s

src/utils/ascii_operations.o: src/utils/ascii_operations.cpp.o

.PHONY : src/utils/ascii_operations.o

# target to build an object file
src/utils/ascii_operations.cpp.o:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/utils/ascii_operations.cpp.o
.PHONY : src/utils/ascii_operations.cpp.o

src/utils/ascii_operations.i: src/utils/ascii_operations.cpp.i

.PHONY : src/utils/ascii_operations.i

# target to preprocess a source file
src/utils/ascii_operations.cpp.i:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/utils/ascii_operations.cpp.i
.PHONY : src/utils/ascii_operations.cpp.i

src/utils/ascii_operations.s: src/utils/ascii_operations.cpp.s

.PHONY : src/utils/ascii_operations.s

# target to generate assembly for a file
src/utils/ascii_operations.cpp.s:
	$(MAKE) -f CMakeFiles/basic_test.dir/build.make CMakeFiles/basic_test.dir/src/utils/ascii_operations.cpp.s
.PHONY : src/utils/ascii_operations.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... basic_test"
	@echo "... src/sensor_data/sensor_data.o"
	@echo "... src/sensor_data/sensor_data.i"
	@echo "... src/sensor_data/sensor_data.s"
	@echo "... src/sensor_observers/data_records/data_record.o"
	@echo "... src/sensor_observers/data_records/data_record.i"
	@echo "... src/sensor_observers/data_records/data_record.s"
	@echo "... src/sensor_observers/data_records/linux/linux_syscall_record.o"
	@echo "... src/sensor_observers/data_records/linux/linux_syscall_record.i"
	@echo "... src/sensor_observers/data_records/linux/linux_syscall_record.s"
	@echo "... src/sensor_observers/data_streams/output_stream.o"
	@echo "... src/sensor_observers/data_streams/output_stream.i"
	@echo "... src/sensor_observers/data_streams/output_stream.s"
	@echo "... src/sensor_observers/syscall_logger.o"
	@echo "... src/sensor_observers/syscall_logger.i"
	@echo "... src/sensor_observers/syscall_logger.s"
	@echo "... src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.o"
	@echo "... src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.i"
	@echo "... src/sensors/syscall_sensors/syscall_readers/linux_syscall_reader.s"
	@echo "... src/sensors/syscall_sensors/syscall_readers/reader_factory.o"
	@echo "... src/sensors/syscall_sensors/syscall_readers/reader_factory.i"
	@echo "... src/sensors/syscall_sensors/syscall_readers/reader_factory.s"
	@echo "... src/sensors/syscall_sensors/syscall_sensor.o"
	@echo "... src/sensors/syscall_sensors/syscall_sensor.i"
	@echo "... src/sensors/syscall_sensors/syscall_sensor.s"
	@echo "... src/tests/basic_test.o"
	@echo "... src/tests/basic_test.i"
	@echo "... src/tests/basic_test.s"
	@echo "... src/utils/ascii_operations.o"
	@echo "... src/utils/ascii_operations.i"
	@echo "... src/utils/ascii_operations.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

