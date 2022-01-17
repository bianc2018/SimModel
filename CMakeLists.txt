# CMake 最低版本号要求

cmake_minimum_required (VERSION 3.11)

# 项目信息
project (SimModel)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake;${CMAKE_MODULE_PATH}")

#include(Sim)
include(glfw)
include(assimp)
include(glm)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src src_cc)

#add_executable(${PROJECT_NAME})
#target_sources(${PROJECT_NAME} PUBLIC ${src_cc})
#target_link_libraries(${PROJECT_NAME} PUBLIC fmt::fmt)

add_library(${PROJECT_NAME} SHARED ${src_cc})
target_link_libraries(${PROJECT_NAME} PRIVATE  glfw assimp glm)

add_library(${PROJECT_NAME}_static ${src_cc})
target_link_libraries(${PROJECT_NAME}_static PRIVATE  glfw assimp glm)

add_subdirectory(example)
option(BUILD_TESTS "Build tests." FALSE)
if (BUILD_TESTS)
    enable_testing()
    add_subdirectory ("test")
endif()