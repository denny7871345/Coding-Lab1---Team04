# ! ------------------------------------------------------------------ !
# ! Changing this file incorrectly can cause your program to not build !
# ! If you don't know CMake well DO NOT touch this file                !
# ! ------------------------------------------------------------------ !

cmake_minimum_required(VERSION 3.20)
project(OOP VERSION 0.1.0)
enable_testing()

set(CMAKE_CXX_STANDARD 17)

# Custom coverage CMAKE_BUILD_TYPE
set(CMAKE_C_FLAGS_COVERAGE "--coverage -g -O0")
set(CMAKE_CXX_FLAGS_COVERAGE "--coverage -g -O0")

#### GTest
# reference: https://google.github.io/googletest/quickstart-cmake.html
include(FetchContent)
FetchContent_Declare(
    googletest
    GIT_REPOSITORY https://github.com/google/googletest.git
    GIT_TAG release-1.12.1
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

include(files.cmake)

set(SRC_DIR ${CMAKE_SOURCE_DIR}/src)
set(INCLUDE_DIR ${CMAKE_SOURCE_DIR}/include)
set(TEST_DIR ${CMAKE_SOURCE_DIR}/test)

list(TRANSFORM SRC_FILES PREPEND ${SRC_DIR}/)
list(TRANSFORM INCLUDE_FILES PREPEND ${INCLUDE_DIR}/)
list(TRANSFORM TEST_FILES PREPEND ${TEST_DIR}/)

find_program(MEMORYCHECK_COMMAND valgrind)
set(MEMORYCHECK_COMMAND_OPTIONS
    "--error-exitcode=1 --track-origins=yes --leak-check=full"
)
include(CTest)

message(${COVERAGE_EXTRA_FLAGS})

add_executable(ut_all
    ${SRC_FILES}
    ${INCLUDE_FILES}
    ${TEST_FILES}
)
target_link_libraries(ut_all
    GTest::gtest_main
)
target_include_directories(ut_all PRIVATE
    ${INCLUDE_DIR}
)
target_compile_options(ut_all PRIVATE
    -Wall -pedantic
)
include(GoogleTest)
gtest_discover_tests(ut_all)
