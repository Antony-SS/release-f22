# CMAKE generated file: DO NOT EDIT!
# Generated by CMake Version 3.22
cmake_policy(SET CMP0009 NEW)

# cs225_sources at lib/CMakeLists.txt:12 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/workspaces/CS225/release-f22/lab_memory/lib/cs225/*.cpp")
set(OLD_GLOB
  "/workspaces/CS225/release-f22/lab_memory/lib/cs225/HSLAPixel.cpp"
  "/workspaces/CS225/release-f22/lab_memory/lib/cs225/PNG.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/workspaces/CS225/release-f22/lab_memory/build/CMakeFiles/cmake.verify_globs")
endif()

# lodepng_sources at lib/CMakeLists.txt:6 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/workspaces/CS225/release-f22/lab_memory/lib/lodepng/*.cpp")
set(OLD_GLOB
  "/workspaces/CS225/release-f22/lab_memory/lib/lodepng/lodepng.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/workspaces/CS225/release-f22/lab_memory/build/CMakeFiles/cmake.verify_globs")
endif()

# lodepng_sources at lib/CMakeLists.txt:6 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/workspaces/CS225/release-f22/lab_memory/lib/lodepng/*.h")
set(OLD_GLOB
  "/workspaces/CS225/release-f22/lab_memory/lib/lodepng/lodepng.h"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/workspaces/CS225/release-f22/lab_memory/build/CMakeFiles/cmake.verify_globs")
endif()

# src_sources at src/CMakeLists.txt:5 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/workspaces/CS225/release-f22/lab_memory/src/*.cpp")
set(OLD_GLOB
  "/workspaces/CS225/release-f22/lab_memory/src/allocator.cpp"
  "/workspaces/CS225/release-f22/lab_memory/src/fileio.cpp"
  "/workspaces/CS225/release-f22/lab_memory/src/letter.cpp"
  "/workspaces/CS225/release-f22/lab_memory/src/room.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/workspaces/CS225/release-f22/lab_memory/build/CMakeFiles/cmake.verify_globs")
endif()

# tests_src at CMakeLists.txt:131 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/workspaces/CS225/release-f22/lab_memory/tests/*.cpp")
set(OLD_GLOB
  "/workspaces/CS225/release-f22/lab_memory/tests/tests.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/workspaces/CS225/release-f22/lab_memory/build/CMakeFiles/cmake.verify_globs")
endif()
