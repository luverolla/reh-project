
(cl:in-package :asdf)

(defsystem "sound_recognition-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SoundRecognition" :depends-on ("_package_SoundRecognition"))
    (:file "_package_SoundRecognition" :depends-on ("_package"))
  ))