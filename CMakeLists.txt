cmake_minimum_required(VERSION 3.13.4)

project (OpenGL_Starter)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

find_package(OpenGL REQUIRED)

add_subdirectory(vendor/glfw)

include_directories(${OPENGL_INCLUDE_DIR})

add_executable(${PROJECT_NAME} Application.cpp)

target_include_directories(${PROJECT_NAME}
  PUBLIC vendor/glfw/include
)

target_link_directories(${PROJECT_NAME}
    PRIVATE vendor/glfw/src
)

target_link_libraries(${PROJECT_NAME}
    OpenGL::GL
    glfw
)
