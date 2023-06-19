cmake_minimum_required(VERSION 3.24)
project(SO2_P)

set(CMAKE_CXX_STANDARD 17)

find_package(Curses REQUIRED)

add_executable(SO2_P main.cpp Bridge.cpp Bridge.h Vehicle.cpp Vehicle.h Controller.cpp Controller.h Random.cpp Random.h inc/Bridge.h src/main.cpp)

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)
target_link_libraries(SO2_P Threads::Threads ${CURSES_LIBRARIES})
