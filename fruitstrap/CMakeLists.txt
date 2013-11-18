cmake_minimum_required (VERSION 2.8)
set (PROJ_NAME "fruitstrap")
SET (CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${KRAL_PATH}) # Necessary for all the other modules to find
                                                          # the macros in KRAL
PROJECT (${PROJ_NAME})
INCLUDE (KRALMain)

build_module(${PROJ_NAME})

link_ios_framework(${PROJ_NAME} CoreFoundation)
link_ios_framework(${PROJ_NAME} MobileDevice "/System/Library/PrivateFrameworks")
