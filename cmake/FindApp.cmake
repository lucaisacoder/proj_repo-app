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
    PATHS "${PROJ_REPO_TOP_DIR}/modules/app")
message("${PROJ_REPO_TOP_DIR}/modules/app ${App_INCLUDE_DIR}")
if(App_INCLUDE_DIR)
    set(App_FOUND true)
    set(App_INCLUDE_DIRS ${App_INCLUDE_DIR})
    #set(App_ROOT_DIRS ${PROJ_REPO_TOP_DIR}/modules/app)
endif()

