# SPDX-License-Identifier: Apache-2.0
#
# Copyright (c) 2025, Pete Johanson

# Perform any post-processing/customization once details of selected board and shields
# is fully loaded.
#
# This CMake module will TODO.
#
include_guard(GLOBAL)

include(python)
include(extensions)

foreach(root ${BOARD_ROOT})
  message("Checking ${root}")
  if (EXISTS ${root}/boards/post_boards_shields.cmake)
    message("found ${root}")
    include(${root}/boards/post_boards_shields.cmake)
  endif()
endforeach()
