# CMake 最低版本号要求

cmake_minimum_required (VERSION 3.11)

# 项目信息
project (glad)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src src_cc)

add_library(${PROJECT_NAME} ${src_cc})
