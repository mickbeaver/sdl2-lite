(in-package #:sdl2-lite)

(defun init (&rest flags)
  "Initialize SDL library. Returns 0 on success."
  (sdl-init flags))

(defun quit ()
  "Exit SDL, cleaning up initialized subsystems."
  (sdl-quit))
