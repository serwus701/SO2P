cmake_minimum_required(VERSION 3.24)
project(SO2_P)

set(CMAKE_CXX_STANDARD 17)

add_executable(SO2_P main.cpp Bridge.cpp Bridge.h Vehicle.cpp Vehicle.h Controller.cpp Controller.h Random.cpp Random.h)
