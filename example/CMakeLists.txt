# all cpp files
enable_testing()
file(GLOB_RECURSE CPP_SRC_LIST ./*.cpp)
# generate target for every cpp file
foreach(FILE_PATH ${CPP_SRC_LIST})
    MESSAGE("demo :" ${FILE_PATH})
    STRING(REGEX REPLACE ".+/(.+)\\..*" "\\1" FILE_NAME ${FILE_PATH})
    set(DEMO_EXE ${FILE_NAME})
    add_executable(${DEMO_EXE} ${FILE_PATH})
    target_link_libraries(${DEMO_EXE} PRIVATE  ${PROJECT_NAME}_static)
endforeach()