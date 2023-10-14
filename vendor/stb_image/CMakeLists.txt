cmake_minimum_required(VERSION 3.13.4)

project (stb_image)

include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)
add_library(${PROJECT_NAME}
    src/stb_image.cpp
)

target_include_directories(stb_image
    PUBLIC include/
)
