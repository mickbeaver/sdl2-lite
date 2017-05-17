(defpackage #:sdl2-lite-cffi
  (:nicknames #:%sdl2)
  (:use #:cl
        #:cffi)
  (:export #:sdl-init-video

           ;;SDL.h
           #:sdl-init-flags
           #:sdl-init
           #:sdl-quit

	   ;; SDL_event.h
	   #:sdl-event-type
	   #:sdl-event
	   #:sdl-poll-event
	   #:type

           ;; SDL_version.h
           #:sdl-version
           #:major
           #:minor
           #:patch
           #:sdl-get-version

           ;; SDL_video.h
	   #:sdl-gl-get-proc-address
           #:sdl-create-window
           #:sdl-destroy-window
           #:sdl-gl-context-bitfield
           #:sdl-gl-context-profile-mask
           #:sdl-gl-create-context
           #:sdl-gl-delete-context
           #:sdl-gl-depth-size
           #:sdl-gl-double-buffer
           #:sdl-gl-profile
           #:sdl-gl-set-attribute
           #:sdl-gl-set-swap-interval
           #:sdl-gl-swap-window
           #:sdl-hide-window
           #:sdl-show-window))


