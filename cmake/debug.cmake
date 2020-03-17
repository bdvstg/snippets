function(print_var)
    message("==> ${ARGV} = ${${ARGV}}")
endfunction()

function(pkgconfig_print_vars)
    message("${ARGV}_FOUND = ${${ARGV}_FOUND}")
    message("${ARGV}_LIBRARIES = ${${ARGV}_LIBRARIES}")
    message("${ARGV}_LIBRARY_DIRS = ${${ARGV}_LIBRARY_DIRS}")
    message("${ARGV}_LDFLAGS = ${${ARGV}_LDFLAGS}")
    message("${ARGV}_LDFLAGS_OTHER = ${${ARGV}_LDFLAGS_OTHER}")
    message("${ARGV}_INCLUDE_DIRS = ${${ARGV}_INCLUDE_DIRS}")
    message("${ARGV}_CFLAGS = ${${ARGV}_CFLAGS}")
    message("${ARGV}_CFLAGS_OTHER = ${${ARGV}_CFLAGS_OTHER}")
endfunction()

# example
find_package(PkgConfig REQUIRED)
pkg_check_modules(FreeType REQUIRED freetype2)
print_var("FreeType_LIBRARIES") # message("FreeType_LIBRARIES = ${FreeType_LIBRARIES}")
pkgconfig_print_vars("FreeType") # show all variable by pkg-config module
