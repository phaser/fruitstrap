cmake_minimum_required (VERSION 2.8)
include (KRAL/config.cmake)
set (KRAL_PATH "${CMAKE_CURRENT_LIST_DIR}/KRAL/")
set (PROJECTS_ROOT_DIR "${CMAKE_CURRENT_LIST_DIR}/projects/")
set (PACKAGE_DIRS "${CMAKE_CURRENT_LIST_DIR}/packages/qui;${CMAKE_CURRENT_LIST_DIR}/packages/third_party;${CMAKE_CURRENT_LIST_DIR}/packages/wrappers;${CMAKE_CURRENT_LIST_DIR}/cocos")

#== TARGET Default
set(CTARGET "Default")
set (TARGET_NAME_${CTARGET}      "${CTARGET}")
set (PLATFORM_${CTARGET}         "osx")

#== TARGET fruitstrap
set(CTARGET "fruitstrap")
list (APPEND TARGETS ${CTARGET})
copy_target ("Default" ${CTARGET})
set (TARGET_NAME_${CTARGET}      "${CTARGET}")
set (PLATFORM_${CTARGET}         "xcode")
set (PROJECT_DIR_${CTARGET}      "${CMAKE_CURRENT_LIST_DIR}/fruitstrap")
set (BUILD_DIR_${CTARGET}        "fruitstrap")
set (PROJECT_TYPE_${CTARGET}     "Xcode")
set (CUSTOM_ARGS_${CTARGET}      "-Wdev")

