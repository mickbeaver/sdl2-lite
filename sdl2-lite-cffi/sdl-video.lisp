(in-package #:sdl2-lite-cffi)

(defbitfield sdl-window-flags
  (:sdl-window-fullscreen #x00000001)
  (:sdl-window-opengl     #x00000002)
  (:sdl-window-shown      #x00000004)
  (:sdl-window-hidden     #x00000008))

(defconstant +sdl-windowpos-centered-mask+ #x2FFF0000)

(defun sdl-windowpos-centered-display (x)
  (logior +sdl-windowpos-centered-mask+ x))

(defconstant +sdl-windowpos-centered+ +sdl-windowpos-centered-mask+)

(defcfun ("SDL_CreateWindow" sdl-create-window) :pointer
  (title :pointer)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (flags sdl-window-flags))

(defcfun ("SDL_DestroyWindow" sdl-destroy-window) :void
  (window :pointer))

(defcfun ("SDL_ShowWindow" sdl-show-window) :void
  (window :pointer))

(defcfun ("SDL_HideWindow" sdl-hide-window) :void
  (window :pointer))

(defctype sdl-gl-context :pointer)

(defcenum sdl-gl-attr
  :sdl-gl-red-size
  :sdl-gl-green-size
  :sdl-gl-blue-size
  :sdl-gl-alpha-size
  :sdl-gl-buffer-size
  :sdl-gl-double-buffer
  :sdl-gl-depth-size
  :sdl-gl-stencil-size
  :sdl-gl-accum-red-size
  :sdl-gl-accum-green-size
  :sdl-gl-accum-blue-size
  :sdl-gl-accum-alpha-size
  :sdl-gl-stereo
  :sdl-gl-multi-sample-buffers
  :sdl-gl-multi-sample-samples
  :sdl-gl-accelerated-visual
  :sdl-gl-retained-backing
  :sdl-gl-context-major-version
  :sdl-gl-context-minor-version
  :sdl-gl-context-egl
  :sdl-gl-context-flags
  :sdl-gl-context-profile-mask
  :sdl-gl-share-with-current-context
  :sdl-gl-frame-buffer-srgb-capable)

(defcenum sdl-gl-profile
  (:sdl-gl-context-profile-es            #x0004)
  (:sdl-gl-context-profile-core          #x0001)
  (:sdl-gl-context-profile-compatibility #x0002))

(defbitfield sdl-gl-context-bitfield
  (:sdl-gl-context-debug-flag              #x0001)
  (:sdl-gl-context-forward-compatible-flag #x0002)
  (:sdl-gl-context-robust-access-flag      #x0004)
  (:sdl-gl-context-reset-isolation-flag    #x0008))

(defcfun ("SDL_GL_CreateContext" sdl-gl-create-context) sdl-gl-context
  (window :pointer))

(defcfun ("SDL_GL_DeleteContext" sdl-gl-delete-context) :void
  (context sdl-gl-context))

(defcfun ("SDL_GL_SetAttribute" sdl-gl-set-attribute) :int
  (attr sdl-gl-attr)
  (value :int))

(defcfun ("SDL_GL_GetAttribute" sdl-gl-get-attribute) :int
  (attr sdl-gl-attr)
  (value :pointer))

(defcfun ("SDL_GL_SetSwapInterval" sdl-gl-set-swap-interval) :int
  (interval :int))

(defcfun ("SDL_GL_SwapWindow" sdl-gl-swap-window) :void
  (window :pointer))

(defcfun ("SDL_GL_GetProcAddress" sdl-gl-get-proc-address) :pointer
  (proc :pointer))


