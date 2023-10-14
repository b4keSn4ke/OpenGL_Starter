cmake_minimum_required(VERSION 3.13.4)

project (OpenGL_Starter)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror -std=c++20")
set(source_dir "${PROJECT_SOURCE_DIR}/src")
set(include_dir "${PROJECT_SOURCE_DIR}/include")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(GLFW_USE_WAYLAND ON)

option(DEBUG_MODE ON)
if(DEBUG_MODE)
  add_definitions(-DDEBUG_MODE=1)
endif()

# Verify if host has Git installed and then proceed to fetchthe submodules on Git
find_package(Git QUIET)
if(GIT_FOUND AND EXISTS "${PROJECT_SOURCE_DIR}/.git")
# Update submodules as needed
    option(GIT_SUBMODULE "Check submodules during build" ON)
    if(GIT_SUBMODULE)
        message(STATUS "Submodule update")
        execute_process(COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive
                        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
                        RESULT_VARIABLE GIT_SUBMOD_RESULT)
        if(NOT GIT_SUBMOD_RESULT EQUAL "0")
            message(FATAL_ERROR "git submodule update --init --recursive failed with ${GIT_SUBMOD_RESULT}, please checkout submodules")
        endif()
    endif()
endif()

if(NOT EXISTS "${PROJECT_SOURCE_DIR}/vendor/glfw/CMakeLists.txt")
    message(FATAL_ERROR "The submodules were not downloaded! GIT_SUBMODULE was turned off or failed. Please update submodules and try again.")
endif()

file(GLOB source_files "${source_dir}/*.cpp")

add_subdirectory(vendor/glad)
add_subdirectory(vendor/glfw)
add_subdirectory(vendor/stb_image)

include_directories(
    ${include_dir}
)

add_executable(${PROJECT_NAME} 
    ${source_files}
)

target_include_directories(${PROJECT_NAME}
    PUBLIC vendor/glfw/include
    PUBLIC vendor/glad/include
    PUBLIC vendor/stb_image/include
)

target_link_directories(${PROJECT_NAME}
    PRIVATE vendor/glfw/src
    PRIVATE vendor/glad/src
    PRIVATE vendor/stb_image/src
)

target_link_libraries(${PROJECT_NAME}
    PUBLIC glfw
    PUBLIC glad
    PUBLIC stb_image
)
