#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "raylib" for configuration "Release"
set_property(TARGET raylib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(raylib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/raylib.lib"
  )

list(APPEND _cmake_import_check_targets raylib )
list(APPEND _cmake_import_check_files_for_raylib "${_IMPORT_PREFIX}/lib/raylib.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
