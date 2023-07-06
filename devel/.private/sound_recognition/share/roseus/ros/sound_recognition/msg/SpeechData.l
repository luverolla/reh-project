;; Auto-generated. Do not edit!


(when (boundp 'sound_recognition::SpeechData)
  (if (not (find-package "SOUND_RECOGNITION"))
    (make-package "SOUND_RECOGNITION"))
  (shadow 'SpeechData (find-package "SOUND_RECOGNITION")))
(unless (find-package "SOUND_RECOGNITION::SPEECHDATA")
  (make-package "SOUND_RECOGNITION::SPEECHDATA"))

(in-package "ROS")
;;//! \htmlinclude SpeechData.msg.html


(defclass sound_recognition::SpeechData
  :super ros::object
  :slots (_data _start_time _end_time ))

(defmethod sound_recognition::SpeechData
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    ((:start_time __start_time) 0.0)
    ((:end_time __end_time) 0.0)
    )
   (send-super :init)
   (setq _data __data)
   (setq _start_time (float __start_time))
   (setq _end_time (float __end_time))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:end_time
   (&optional __end_time)
   (if __end_time (setq _end_time __end_time)) _end_time)
  (:serialization-length
   ()
   (+
    ;; int16[] _data
    (* 2    (length _data)) 4
    ;; float64 _start_time
    8
    ;; float64 _end_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-word (elt _data i) s)
       )
     ;; float64 _start_time
       (sys::poke _start_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_time
       (sys::poke _end_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float64 _start_time
     (setq _start_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_time
     (setq _end_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sound_recognition::SpeechData :md5sum-) "6724f2ce0350385e91e985e0979bee3c")
(setf (get sound_recognition::SpeechData :datatype-) "sound_recognition/SpeechData")
(setf (get sound_recognition::SpeechData :definition-)
      "int16[] data
float64 start_time
float64 end_time
")



(provide :sound_recognition/SpeechData "6724f2ce0350385e91e985e0979bee3c")


