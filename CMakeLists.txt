# Already built, just need to copy files to the install location
cmake_minimum_required(VERSION 3.5)


message("CIP = ${CMAKE_INSTALL_PREFIX} (should be /foo/bar/bubba")
message("CIP = ${CMAKE_CURRENT_SOURCE_DIR} (should be /foo/bar/bubba")

install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/headers DESTINATION ${CMAKE_INSTALL_PREFIX}/includes FILES_MATCHING PATTERN "*.h*")
