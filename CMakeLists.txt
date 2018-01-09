cmake_minimum_required(VERSION 3.9)
project(calc)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++1y -Wall")

find_package(FLEX)

flex_target(lexer calc.l calc.cpp DEFINES_FILE "calc.hpp" COMPILE_FLAGS "-d")

add_executable(calc main.cpp ${FLEX_lexer_OUTPUTS})
