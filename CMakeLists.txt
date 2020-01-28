# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

# 指定top路径
get_filename_component(PROJ_REPO_TOP_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../.. ABSOLUTE)

# 设置cmake工具路径
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH}
    ${PROJ_REPO_TOP_DIR}/modules/app/cmake
    ${PROJ_REPO_TOP_DIR}/modules/core/cmake
    ${PROJ_REPO_TOP_DIR}/modules/osal/cmake
    ${PROJ_REPO_TOP_DIR}/modules/public/cmake)

find_package(Public REQUIRED)
if(Public_FOUND)
    include_directories(${Public_INCLUDE_DIRS})
else()
    message("not found Public")
endif()

aux_source_directory(src DIR_SRCS)
include_directories(
    ${PROJ_REPO_TOP_DIR}/modules/app/inc)
add_library (app STATIC ${DIR_SRCS})