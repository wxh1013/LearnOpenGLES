if(UNIX)
    set(CMAKE_EXE_LINKER_FLAGS "-fno-pie -no-pie")
    add_definitions("-Ofast -std=c++17 -fPIC")
    add_definitions(-DVK_USE_PLATFORM_XCB_KHR)
elseif(WIN32)
    add_definitions(-DNOMINMAX)
    add_definitions(-D_USE_MATH_DEFINES)
    add_definitions(-DVK_USE_PLATFORM_WIN32_KHR)
endif()
