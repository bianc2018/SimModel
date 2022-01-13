# ��ӵ�����������
include(FetchContent)
# FetchContent_MakeAvailable was not added until CMake 3.14
if(${CMAKE_VERSION} VERSION_LESS 3.14)
    include(add_FetchContent_MakeAvailable.cmake)
endif()

set(LIB_NAME  assimp)  # ָ���汾
set(LIB_GIT_TAG  v5.1.6)  # ָ���汾
set(LIB_GIT_URL  https://github.com/assimp/assimp.git)  # ָ��git�ֿ��ַ

set(ASSIMP_BUILD_ASSIMP_TOOLS OFF)
set(ASSIMP_BUILD_SAMPLES OFF)
set(ASSIMP_BUILD_TESTS OFF)

set(CMAKE_POLICY_DEFAULT_CMP0077 NEW)

FetchContent_Declare(
  ${LIB_NAME}
  GIT_REPOSITORY    ${LIB_GIT_URL}
  GIT_TAG           ${LIB_GIT_TAG}
  SOURCE_DIR        ${PROJECT_SOURCE_DIR}/thirdparty/${LIB_NAME}
)



FetchContent_MakeAvailable(${LIB_NAME})