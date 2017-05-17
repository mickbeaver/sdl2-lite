(in-package #:sdl2-lite-cffi)

(defcstruct sdl-version
  (major :uint8)
  (minor :uint8)
  (patch :uint8))

(defcfun ("SDL_GetVersion" sdl-get-version) :void
  (state (:pointer sdl-version)))
