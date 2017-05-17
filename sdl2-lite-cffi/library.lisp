(in-package #:sdl2-lite-cffi)

(cffi:define-foreign-library libsdl2
  (:unix (:or "libSDL2.lisp.so" "libSDL2-2.0.so.0" "libSDL2.so"))
  (:windows (:or "SDL2.lisp.dll" "SDL2.dll")))

(cffi:use-foreign-library libsdl2)

