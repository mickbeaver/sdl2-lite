(in-package #:sdl2-lite)

(defconstant +sdl-windowpos-centered-mask+ #x2FFF0000)
(defconstant +sdl-windowpos-centered+ +sdl-windowpos-centered-mask+)

(defun gl-set-attribute (attribute value)
  "Set OpenGL attributes before creating a context."
  (sdl-gl-set-attribute attribute value))

(defun create-window (title x y width height flags-lst)
  (cffi:with-foreign-string (foreign-title title)
    (let ((window (sdl-create-window foreign-title
                                     x
                                     y
                                     width
                                     height
                                     flags-lst)))
      #+(and swank windows)
      (when (member :sdl-window-shown flags-lst)
        (hide-window window)
        (show-window window))
      window)))

(defun destroy-window (window)
  (sdl-destroy-window window))

(defun show-window (window)
  (sdl-show-window window))

(defun hide-window (window)
  (sdl-hide-window window))

(defun gl-set-context-profile (profile)
  "Set the OpenGL context profile (core, compatibilty, ES)"
  (sdl-gl-set-attribute
   :sdl-gl-context-profile-mask
   (cffi:foreign-enum-value '%sdl2:sdl-gl-profile profile)))

(defun gl-set-context-flags (&rest flags)
  (sdl-gl-set-attribute
   :sdl-gl-context-flags
   (cffi:foreign-bitfield-value '%sdl2:sdl-gl-context-bitfield flags)))

(defun gl-set-attribute (attribute value)
  (sdl-gl-set-attribute attribute value))

(defun gl-create-context (window)
  (sdl-gl-create-context window))

(defun gl-delete-context (context)
  (sdl-gl-delete-context context))

(defun gl-get-attribute (attribute)
  (cffi:with-foreign-object (value :int)
    (sdl-gl-get-attribute attribute value)
    (mem-ref value)))

(defun gl-set-swap-interval (interval)
  (sdl-gl-set-swap-interval interval))

(defun gl-swap-window (window)
  (sdl-gl-swap-window window))

(defun gl-get-proc-address (proc-name)
  (cffi:with-foreign-string (foreign-proc-name proc-name)
    (sdl-gl-get-proc-address foreign-proc-name)))


