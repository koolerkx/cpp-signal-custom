cmake_minimum_required(VERSION 3.28)
project(MyProject LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_EXPERIMENTAL_CXX_MODULE_CMAKE_API ON)

add_executable(App
    main.cpp
    signal.cpp
    signal.ixx
)

if (MSVC)
    target_compile_options(App PRIVATE /experimental:module)
elseif(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    target_compile_options(App PRIVATE -fmodules-ts)
elseif(CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
    target_compile_options(App PRIVATE -fmodules)
endif()

