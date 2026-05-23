cmake_minimum_required(VERSION 3.30)

project(cmake_run_target_example LANGUAGES CXX)

include(cmake/simpletarget.cmake)

bin_from_file(hello.cpp)
