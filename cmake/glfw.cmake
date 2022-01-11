# ��ӵ�����������
include(FetchContent)
# FetchContent_MakeAvailable was not added until CMake 3.14
if(${CMAKE_VERSION} VERSION_LESS 3.14)
    include(add_FetchContent_MakeAvailable.cmake)
endif()

set(LIB_NAME  glfw)  # ָ���汾
set(LIB_GIT_TAG  3.3.6)  # ָ���汾
set(LIB_GIT_URL  https://github.com/glfw/glfw.git)  # ָ��git�ֿ��ַ

FetchContent_Declare(
  ${LIB_NAME}
  GIT_REPOSITORY    ${LIB_GIT_URL}
  GIT_TAG           ${LIB_GIT_TAG}
  SOURCE_DIR        ${PROJECT_SOURCE_DIR}/thirdparty/${LIB_NAME}
)

FetchContent_MakeAvailable(${LIB_NAME})