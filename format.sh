#!/usr/bin/bash

# Format all header files of the project
clang-format -i include/*.h
# Format all source files of the project
clang-format -i src/*.cpp
