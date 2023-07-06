;; Auto-generated. Do not edit!


(when (boundp 'sound_recognition::SoundRecognition)
  (if (not (find-package "SOUND_RECOGNITION"))
    (make-package "SOUND_RECOGNITION"))
  (shadow 'SoundRecognition (find-package "SOUND_RECOGNITION")))
(unless (find-package "SOUND_RECOGNITION::SOUNDRECOGNITION")
  (make-package "SOUND_RECOGNITION::SOUNDRECOGNITION"))
(unless (find-package "SOUND_RECOGNITION::SOUNDRECOGNITIONREQUEST")
  (make-package "SOUND_RECOGNITION::SOUNDRECOGNITIONREQUEST"))
(unless (find-package "SOUND_RECOGNITION::SOUNDRECOGNITIONRESPONSE")
  (make-package "SOUND_RECOGNITION::SOUNDRECOGNITIONRESPONSE"))

(in-package "ROS")





(defclass sound_recognition::SoundRecognitionRequest
  :super ros::object
  :slots ())

(defmethod sound_recognition::SoundRecognitionRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass sound_recognition::SoundRecognitionResponse
  :super ros::object
  :slots (_label ))

(defmethod sound_recognition::SoundRecognitionResponse
  (:init
   (&key
    ((:label __label) "")
    )
   (send-super :init)
   (setq _label (string __label))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sound_recognition::SoundRecognition
  :super ros::object
  :slots ())

(setf (get sound_recognition::SoundRecognition :md5sum-) "ea23f97416b04c6151d2b576c0665ac1")
(setf (get sound_recognition::SoundRecognition :datatype-) "sound_recognition/SoundRecognition")
(setf (get sound_recognition::SoundRecognition :request) sound_recognition::SoundRecognitionRequest)
(setf (get sound_recognition::SoundRecognition :response) sound_recognition::SoundRecognitionResponse)

(defmethod sound_recognition::SoundRecognitionRequest
  (:response () (instance sound_recognition::SoundRecognitionResponse :init)))

(setf (get sound_recognition::SoundRecognitionRequest :md5sum-) "ea23f97416b04c6151d2b576c0665ac1")
(setf (get sound_recognition::SoundRecognitionRequest :datatype-) "sound_recognition/SoundRecognitionRequest")
(setf (get sound_recognition::SoundRecognitionRequest :definition-)
      "---
string label
")

(setf (get sound_recognition::SoundRecognitionResponse :md5sum-) "ea23f97416b04c6151d2b576c0665ac1")
(setf (get sound_recognition::SoundRecognitionResponse :datatype-) "sound_recognition/SoundRecognitionResponse")
(setf (get sound_recognition::SoundRecognitionResponse :definition-)
      "---
string label
")



(provide :sound_recognition/SoundRecognition "ea23f97416b04c6151d2b576c0665ac1")


