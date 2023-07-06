
(cl:in-package :asdf)

(defsystem "sound_recognition-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SpeechData" :depends-on ("_package_SpeechData"))
    (:file "_package_SpeechData" :depends-on ("_package"))
  ))