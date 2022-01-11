# 添加第三方依赖包
include(FetchContent)
# FetchContent_MakeAvailable was not added until CMake 3.14
if(${CMAKE_VERSION} VERSION_LESS 3.14)
    include(add_FetchContent_MakeAvailable.cmake)
endif()

FetchContent_Declare(
  Sim
  SOURCE_DIR ${PROJECT_SOURCE_DIR}/thirdparty/Sim
)

FetchContent_MakeAvailable(Sim)

