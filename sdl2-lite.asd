(asdf:defsystem #:sdl2-lite
  :serial t
  :description "Purposefully incomplete SDL2 wrapper that does just enough"
  :author "Mick Beaver <m.charles.beaver@gmail.com>"
  :license "MIT License"
  :depends-on (#:cffi #:trivial-features)
  :components
  ((:module "sdl2-lite-cffi"
            :components ((:file "package")
                         (:file "sdl")
                         (:file "sdl-version")
                         (:file "sdl-event")
                         (:file "sdl-video")
                         (:file "library")))
   (:file "package")
   (:file "sdl")
   (:file "sdl-version")
   (:file "sdl-video")))

