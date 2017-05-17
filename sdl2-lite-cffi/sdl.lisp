(in-package #:sdl2-lite-cffi)

(defbitfield (sdl-init-flags :uint32)
  (:sdl-init-timer    #x00000001)
  (:sdl-init-audio    #x00000010)
  (:sdl-init-video    #x00000020)
  (:sdl-init-joystick #x00000020))

(defcfun ("SDL_Init" sdl-init) :int
  (flags sdl-init-flags))

(defcfun ("SDL_Quit" sdl-quit) :void)
