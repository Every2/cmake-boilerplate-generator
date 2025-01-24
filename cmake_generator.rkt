#lang racket

(define boilerplate "cmake_minimum_required(VERSION 3.20)\nproject(name)\n
set(CMAKE_CXX_STANDARD 11/14/17/20/23)\n
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)\n
set(SOURCES)\n
add_executable(${PROJECT_NAME} ${SOURCES})
")

(call-with-output-file "CMakeLists.txt"
  #:exists 'truncate
  (lambda (out)
    (display boilerplate out)))
