set(App_ROOT_DIRS ${PROJ_REPO_TOP_DIR}/modules/app)
#set(App_LIBRARIES libapp.a)

set(_WINDOWS FALSE)
if("${CMAKE_SYSTEM_NAME}" MATCHES "Windows")
    set(_WINDOWS TRUE)
endif()

set(_LINUX FALSE)
if("${CMAKE_SYSTEM_NAME}" MATCHES "Linux")
    set(_LINUX TRUE)
endif()

find_path(App_INCLUDE_DIR
    NAMES "app_api.h"
    PATHS "${App_ROOT_DIRS}/*")

find_library(App_LIBRARIES
    NAMES "libapp.a"
    HINTS "${App_ROOT_DIRS}/output")

if(App_LIBRARIES)
    set(App_FOUND true)
    set(App_INCLUDE_DIRS ${App_INCLUDE_DIR})
endif()

