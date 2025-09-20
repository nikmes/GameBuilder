#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ImGuiFileDialog::ImGuiFileDialog" for configuration "RelWithDebInfo"
set_property(TARGET ImGuiFileDialog::ImGuiFileDialog APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(ImGuiFileDialog::ImGuiFileDialog PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/ImGuiFileDialog.lib"
  )

list(APPEND _cmake_import_check_targets ImGuiFileDialog::ImGuiFileDialog )
list(APPEND _cmake_import_check_files_for_ImGuiFileDialog::ImGuiFileDialog "${_IMPORT_PREFIX}/lib/ImGuiFileDialog.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
