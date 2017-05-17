(in-package #:sdl2-lite)

(defun get-version ()
  "Return multiple values of major version, minor version, patch version."
  (cffi:with-foreign-object (version '(:struct sdl-version))
    (sdl-get-version version)
    (cffi:with-foreign-slots ((major minor patch) version (:struct sdl-version))
      (values major minor patch))))

