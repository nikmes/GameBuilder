# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "C:/Users/nikme/source/repos/GameBuilder/json/test_files")
  file(MAKE_DIRECTORY "C:/Users/nikme/source/repos/GameBuilder/json/test_files")
endif()
file(MAKE_DIRECTORY
  "C:/Users/nikme/source/repos/GameBuilder/json/tests/download_test_data_project-prefix/src/download_test_data_project-build"
  "C:/Users/nikme/source/repos/GameBuilder/json/tests/download_test_data_project-prefix"
  "C:/Users/nikme/source/repos/GameBuilder/json/tests/download_test_data_project-prefix/tmp"
  "C:/Users/nikme/source/repos/GameBuilder/json/tests/download_test_data_project-prefix/src/download_test_data_project-stamp"
  "C:/Users/nikme/source/repos/GameBuilder/json/tests/download_test_data_project-prefix/src"
  "C:/Users/nikme/source/repos/GameBuilder/json/tests/download_test_data_project-prefix/src/download_test_data_project-stamp"
)

set(configSubDirs Debug;Release;MinSizeRel;RelWithDebInfo)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/nikme/source/repos/GameBuilder/json/tests/download_test_data_project-prefix/src/download_test_data_project-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/nikme/source/repos/GameBuilder/json/tests/download_test_data_project-prefix/src/download_test_data_project-stamp${cfgdir}") # cfgdir has leading slash
endif()
