cmake_minimum_required(VERSION 3.20)
project(FISCHER)

option(REMOVE_INSTALL_LOCAL "install to /usr instead of /usr/local" OFF)
option(MORE_STATIC_LINK "static linking more libraries" OFF)

if(NOT CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
  message(WARNING "GCC is preferred")
endif()

if(REMOVE_INSTALL_LOCAL)
  set(CMAKE_INSTALL_PREFIX /usr)
endif()

# for clangd
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

if(LLVM_ROOT)
  set(LLVM_DIR ${LLVM_ROOT}/lib/cmake/llvm)
  if(PATCH_LLVM)
    execute_process(COMMAND sh -c 
      "patch -N ${LLVM_ROOT}/include/llvm/ADT/STLExtras.h -r /dev/null < ${PROJECT_SOURCE_DIR}/patches/STLExtras.patch")
  endif()
endif()
find_package(LLVM 11.1 REQUIRED CONFIG)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

llvm_map_components_to_libnames(llvm_libs support core irreader)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

file(GLOB MASKSCRAPE_SRCS src/*.cpp)
add_executable(FISCHER ${MASKSCRAPE_SRCS})

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

include(FetchContent)

FetchContent_Declare(
  pegtl
  GIT_REPOSITORY https://github.com/taocpp/PEGTL
  GIT_TAG        3.2.5
)

FetchContent_MakeAvailable(pegtl)

find_package(Boost 1.78 REQUIRED)

target_compile_features(FISCHER PRIVATE cxx_std_20)
target_compile_definitions(FISCHER PRIVATE ${LLVM_DEFINITIONS})
target_include_directories(FISCHER PRIVATE ${LLVM_INCLUDE_DIRS} ./include)

target_link_libraries(FISCHER ${llvm_libs} Threads::Threads taocpp::pegtl Boost::boost)
target_compile_options(FISCHER PRIVATE -fno-rtti)

if(MORE_STATIC_LINK)
  target_link_options(FISCHER PRIVATE -Wl,--as-needed)

  if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    target_link_libraries(FISCHER -static-libgcc -static-libstdc++)
  endif()
endif()

install(TARGETS FISCHER 
  RUNTIME DESTINATION bin
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib/maskscrape)

file(GLOB MASKSCRAPE_SCRIPTS scripts/*.py)
install(FILES ${MASKSCRAPE_SCRIPTS} DESTINATION share/maskscrape)

