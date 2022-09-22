file(GLOB_RECURSE codeSrc CONFIGURE_DEPENDS "*.cpp" "*.h")
add_library(src ${codeSrc})