#[[
takes one *.cpp file and creates a binary from it with the basename of the file.
]]
function(bin_from_file fname)
    get_filename_component(bname ${fname} NAME_WE)

    add_executable(${bname} ${fname})

    add_custom_target(run-${bname}
        COMMAND $<TARGET_FILE:${bname}>
        DEPENDS ${bname}
        COMMENT "Running ${bname}"
        USES_TERMINAL
    )
endfunction()
