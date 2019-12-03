# Already built, just need to copy files to the install location
cmake_minimum_required(VERSION 3.5)

install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include DESTINATION ${CMAKE_INSTALL_PREFIX} FILES_MATCHING PATTERN "*.h*")
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/lib DESTINATION ${CMAKE_INSTALL_PREFIX} FILES_MATCHING PATTERN "*.a*")
