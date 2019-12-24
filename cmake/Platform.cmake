if(UNIX)
    if(USE_XCB)
        include(cmake/FindXCB.cmake)
        if(XCB_FOUND)
            message("XCB is found ${XCB_INCLUDE_DIRS} ${XCB_LIBRARIES}")
            set(NativeWindow ${XCB_LIBRARIES})
        else()
            message("XCB for X11 may not be installed, you may need to install by yourself.")
            message("For example, sudo apt install libxcb1-dev")
        endif()
        add_definitions(-DOPENGLES_USE_XCB)
    endif()
elseif(WIN32)
    if(USE_WIN32)
	    add_definitions(-DOPENGLES_USE_WIN32)
	endif()
endif()

if(UNIX)
    set(SYS_LIB stdc++fs)
endif()
