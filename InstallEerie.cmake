IF(UNIX AND NOT APPLE)
    execute_process(COMMAND ldconfig)
ENDIF(UNIX AND NOT APPLE)

message("------------Installing Eerie------------")
IF(WIN32)
    execute_process(COMMAND ${CMAKE_INSTALL_PREFIX}/io ${CMAKE_SOURCE_DIR}/setup.io)
ELSE()
    execute_process(COMMAND ${CMAKE_INSTALL_PREFIX}/bin/io ${CMAKE_SOURCE_DIR}/setup.io)
ENDIF(WIN32)
