(defpackage #:sdl2-lite
  (:nicknames #:sdl2)
  (:use #:cl
        #:sdl2-lite-cffi)
  (:export
   ;;SDL.h
   #:init
   #:quit

   ;; SDL_video.h
   #:+sdl-windowpos-centered+
   #:create-window
   #:destroy-window
   #:gl-create-context
   #:gl-delete-context
   #:gl-get-attribute
   #:gl-get-proc-address
   #:gl-get-proc-address
   #:gl-set-attribute
   #:gl-set-attribute
   #:gl-set-context-flags
   #:gl-set-context-profile
   #:gl-set-swap-interval
   #:gl-set-swap-interval
   #:gl-swap-window
   #:gl-swap-window
   #:show-window
   #:hide-window

   ;; SDL_version.h
   #:get-version))
