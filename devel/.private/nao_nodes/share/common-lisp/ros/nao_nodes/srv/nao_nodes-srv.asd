
(cl:in-package :asdf)

(defsystem "nao_nodes-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AudioPlayer" :depends-on ("_package_AudioPlayer"))
    (:file "_package_AudioPlayer" :depends-on ("_package"))
    (:file "LoadUrl" :depends-on ("_package_LoadUrl"))
    (:file "_package_LoadUrl" :depends-on ("_package"))
    (:file "Locomotion" :depends-on ("_package_Locomotion"))
    (:file "_package_Locomotion" :depends-on ("_package"))
    (:file "Rest" :depends-on ("_package_Rest"))
    (:file "_package_Rest" :depends-on ("_package"))
    (:file "Text2Speech" :depends-on ("_package_Text2Speech"))
    (:file "_package_Text2Speech" :depends-on ("_package"))
    (:file "WakeUp" :depends-on ("_package_WakeUp"))
    (:file "_package_WakeUp" :depends-on ("_package"))
  ))