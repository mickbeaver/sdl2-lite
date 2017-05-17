(asdf:defsystem #:sdl2-lite-examples
  :serial t
  :description "Examples of using sdl2-lite library"
  :author "Mick Beaver <m.charles.beaver@gmail.com>"
  :license "MIT License"
  :depends-on (#:cffi #:sdl2-lite #:cl-opengl)
  :components
  ((:module "examples"
	    :components ((:file "package")
			 (:file "hello-opengl-window")))))

