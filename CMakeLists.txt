cmake_minimum_required(VERSION 3.5)

project(raylib_test)

set(CMAKE_CXX_STANDARD 20)

add_subdirectory(raylib-cpp)

find_package(raylib REQUIRED)

include_directories(raylib-cpp/include)

# Automatically include all .cpp files in the project directory
file(GLOB_RECURSE SOURCES "src/*.cpp")

add_executable(raylib_test ${SOURCES})

target_link_libraries(raylib_test raylib)
