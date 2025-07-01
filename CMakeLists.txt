cmake_minimum_required(VERSION 3.31)
project(test_c)

set(SOURCES
    main.cpp
)

set(CMAKE_CXX_STANDARD 20)

add_executable(test_c ${SOURCES})
