cmake_minimum_required(VERSION 3.10)

project(gassigehen)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(${PROJECT_NAME} main.cpp)

add_subdirectory(src)
target_include_directories(${PROJECT_NAME} PUBLIC src)
target_link_directories(${PROJECT_NAME} PRIVATE src)
target_link_libraries(${PROJECT_NAME} src)
