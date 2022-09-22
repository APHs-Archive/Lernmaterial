file(GLOB_RECURSE src CONFIGURE_DEPENDS "*.cpp" "*.h")
add_library(tcp ${src})