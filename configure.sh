#!/usr/bin/bash

if [ $1 = "DEBUG" ];
then
    # Build with DEBUG_MODE=ON
    cmake -S . -B build/ -DDEBUG_MODE=ON;
    # Build with DEBUG_MODE=OFF
else
    cmake -S . -B build/ -DDEBUG_MODE=OFF;
fi
