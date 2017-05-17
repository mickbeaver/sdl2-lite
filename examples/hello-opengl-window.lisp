(in-package #:sdl2-lite-examples)

(defun run-hello-opengl-window ()
    (sdl2:init :sdl-init-video)
    (format nil "SDL Version ~{~a~^.~}" (multiple-value-list (sdl2:get-version)))
    (sdl2:gl-set-attribute :sdl-gl-context-major-version 4)
    (sdl2:gl-set-attribute :sdl-gl-context-minor-version 5)
    (sdl2:gl-set-attribute :sdl-gl-double-buffer 1)
    (sdl2:gl-set-attribute :sdl-gl-depth-size 24)
    (let* ((main-window (sdl2:create-window "hello-opengl-window"
                                            sdl2:+sdl-windowpos-centered+
                                            sdl2:+sdl-windowpos-centered+
                                            600
                                            600
                                            '(:sdl-window-opengl :sdl-window-shown)))
	   (main-context (sdl2:gl-create-context main-window)))
      (sdl2:gl-set-swap-interval 1)

      (gl:clear-color 1.0 0.0 0.0 1.0)
      (gl:clear :color-buffer :depth-buffer)
      (sdl2:gl-swap-window main-window)
      (sleep 2)

      (gl:clear-color 0.0 1.0 0.0 1.0)
      (gl:clear :color-buffer :depth-buffer)
      (sdl2:gl-swap-window main-window)
      (sleep 2)

      (gl:clear-color 0.0 0.0 1.0 1.0)
      (gl:clear :color-buffer :depth-buffer)
      (sdl2:gl-swap-window main-window)
      (sleep 2)

      (sdl2:gl-delete-context main-context)
      (sdl2:destroy-window main-window))
    (sdl2:quit))

