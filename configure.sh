#!/usr/bin/bash

# Build with DEBUG_MODE=ON
cmake -S . -B build/ -DDEBUG_MODE=ON;
# Build with DEBUG_MODE=OFF
#cmake -S . -B build/ -DDEBUG_MODE=OFF;
