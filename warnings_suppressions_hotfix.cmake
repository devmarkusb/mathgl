if (MSVC)
    add_definitions(-wd4100 -wd4101 -wd4201 -wd4251 -wd4456 -wd4457 -wd4458 -wd4701 -wd4703 -wd4706 -wd4005 -wd4075)
elseif ("${CMAKE_CXX_COMPILER_ID}" MATCHES "^(Apple)?Clang$")
    add_compile_options(-Wno-everything -Wno-deprecated-declarations -Wno-return-type-c-linkage -Wno-deprecated-register
            -Wno-unused-parameter -Wno-format -Wno-nonnull -Wno-unused-variable)
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    # added for mingw
    add_compile_options(-Wno-extra -Wno-format -Wno-format-extra-args -Wno-unused-but-set-variable
            -Wno-unused-parameter -Wno-unused-result)
    # further additions for gcc
    add_compile_options(-Wno-misleading-indentation -Wno-conversion -Wno-volatile -Wno-implicit-fallthrough)
endif ()
