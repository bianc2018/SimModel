# CMake 最低版本号要求

cmake_minimum_required (VERSION 3.11)

# 项目信息
project (SimModel)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake;${CMAKE_MODULE_PATH}")

#依赖项
set(DEPS glfw assimp glm glad stb_image)  
#包含依赖项
FOREACH(item ${DEPS})   
   #message("include :")
  message("include :" ${item})
  include(${item})
ENDFOREACH(item) 

#include(glfw)
#include(assimp)
#include(glm)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src src_cc)


add_library(${PROJECT_NAME} SHARED ${src_cc})
target_link_libraries(${PROJECT_NAME} PRIVATE  ${DEPS})

add_library(${PROJECT_NAME}_static ${src_cc})
target_link_libraries(${PROJECT_NAME}_static PRIVATE  ${DEPS})

add_subdirectory(example)
option(BUILD_TESTS "Build tests." FALSE)
if (BUILD_TESTS)
    enable_testing()
    add_subdirectory ("test")
endif()