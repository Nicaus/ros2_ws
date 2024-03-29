# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_introtask_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED introtask_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(introtask_FOUND FALSE)
  elseif(NOT introtask_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(introtask_FOUND FALSE)
  endif()
  return()
endif()
set(_introtask_CONFIG_INCLUDED TRUE)

# output package information
if(NOT introtask_FIND_QUIETLY)
  message(STATUS "Found introtask: 0.0.0 (${introtask_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'introtask' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${introtask_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(introtask_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${introtask_DIR}/${_extra}")
endforeach()
