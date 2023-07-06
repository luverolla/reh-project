
(cl:in-package :asdf)

(defsystem "project-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AudioPlayer" :depends-on ("_package_AudioPlayer"))
    (:file "_package_AudioPlayer" :depends-on ("_package"))
    (:file "Text2Speech" :depends-on ("_package_Text2Speech"))
    (:file "_package_Text2Speech" :depends-on ("_package"))
  ))