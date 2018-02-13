; Auto-generated. Do not edit!


(cl:in-package drive_ros_msgs-msg)


;//! \htmlinclude mav_cc16_ODOMETER.msg.html

(cl:defclass <mav_cc16_ODOMETER> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sysid
    :reader sysid
    :initarg :sysid
    :type cl:fixnum
    :initform 0)
   (compid
    :reader compid
    :initarg :compid
    :type cl:fixnum
    :initform 0)
   (time_delta
    :reader time_delta
    :initarg :time_delta
    :type cl:float
    :initform 0.0)
   (dist_delta
    :reader dist_delta
    :initarg :dist_delta
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (dist_abs
    :reader dist_abs
    :initarg :dist_abs
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (quality
    :reader quality
    :initarg :quality
    :type cl:fixnum
    :initform 0))
)

(cl:defclass mav_cc16_ODOMETER (<mav_cc16_ODOMETER>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mav_cc16_ODOMETER>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mav_cc16_ODOMETER)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drive_ros_msgs-msg:<mav_cc16_ODOMETER> is deprecated: use drive_ros_msgs-msg:mav_cc16_ODOMETER instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <mav_cc16_ODOMETER>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drive_ros_msgs-msg:header-val is deprecated.  Use drive_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sysid-val :lambda-list '(m))
(cl:defmethod sysid-val ((m <mav_cc16_ODOMETER>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drive_ros_msgs-msg:sysid-val is deprecated.  Use drive_ros_msgs-msg:sysid instead.")
  (sysid m))

(cl:ensure-generic-function 'compid-val :lambda-list '(m))
(cl:defmethod compid-val ((m <mav_cc16_ODOMETER>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drive_ros_msgs-msg:compid-val is deprecated.  Use drive_ros_msgs-msg:compid instead.")
  (compid m))

(cl:ensure-generic-function 'time_delta-val :lambda-list '(m))
(cl:defmethod time_delta-val ((m <mav_cc16_ODOMETER>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drive_ros_msgs-msg:time_delta-val is deprecated.  Use drive_ros_msgs-msg:time_delta instead.")
  (time_delta m))

(cl:ensure-generic-function 'dist_delta-val :lambda-list '(m))
(cl:defmethod dist_delta-val ((m <mav_cc16_ODOMETER>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drive_ros_msgs-msg:dist_delta-val is deprecated.  Use drive_ros_msgs-msg:dist_delta instead.")
  (dist_delta m))

(cl:ensure-generic-function 'dist_abs-val :lambda-list '(m))
(cl:defmethod dist_abs-val ((m <mav_cc16_ODOMETER>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drive_ros_msgs-msg:dist_abs-val is deprecated.  Use drive_ros_msgs-msg:dist_abs instead.")
  (dist_abs m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <mav_cc16_ODOMETER>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drive_ros_msgs-msg:velocity-val is deprecated.  Use drive_ros_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <mav_cc16_ODOMETER>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drive_ros_msgs-msg:quality-val is deprecated.  Use drive_ros_msgs-msg:quality instead.")
  (quality m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<mav_cc16_ODOMETER>)))
    "Constants for message type '<mav_cc16_ODOMETER>"
  '((:ID . 140))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'mav_cc16_ODOMETER)))
    "Constants for message type 'mav_cc16_ODOMETER"
  '((:ID . 140))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mav_cc16_ODOMETER>) ostream)
  "Serializes a message object of type '<mav_cc16_ODOMETER>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sysid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'compid)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_delta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dist_delta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dist_abs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (cl:let* ((signed (cl:slot-value msg 'quality)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mav_cc16_ODOMETER>) istream)
  "Deserializes a message object of type '<mav_cc16_ODOMETER>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sysid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'compid)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_delta) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dist_delta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dist_abs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'quality) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mav_cc16_ODOMETER>)))
  "Returns string type for a message object of type '<mav_cc16_ODOMETER>"
  "drive_ros_msgs/mav_cc16_ODOMETER")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mav_cc16_ODOMETER)))
  "Returns string type for a message object of type 'mav_cc16_ODOMETER"
  "drive_ros_msgs/mav_cc16_ODOMETER")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mav_cc16_ODOMETER>)))
  "Returns md5sum for a message object of type '<mav_cc16_ODOMETER>"
  "6cebc1146cffb91bedfc5ca00d013869")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mav_cc16_ODOMETER)))
  "Returns md5sum for a message object of type 'mav_cc16_ODOMETER"
  "6cebc1146cffb91bedfc5ca00d013869")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mav_cc16_ODOMETER>)))
  "Returns full string definition for message of type '<mav_cc16_ODOMETER>"
  (cl:format cl:nil "# Automatically Generated in 2017-06-12 22:33:47.452972~%# MESSAGE: ODOMETER~%# Description:Measurement of Odometry Sensor~%Header header~%~%uint8 ID = 140~%uint8 sysid~%uint8 compid~%~%float32 time_delta                  # Time-delta within which the measurement has taken place [s]~%geometry_msgs/Vector3 dist_delta    # Distance travelled within period [m]~%geometry_msgs/Vector3 dist_abs      # Distance travelled [m]~%geometry_msgs/Vector3 velocity      # Velocity [m/s]~%int16 quality                       # Measurement quality indicator (-1 for no quality)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mav_cc16_ODOMETER)))
  "Returns full string definition for message of type 'mav_cc16_ODOMETER"
  (cl:format cl:nil "# Automatically Generated in 2017-06-12 22:33:47.452972~%# MESSAGE: ODOMETER~%# Description:Measurement of Odometry Sensor~%Header header~%~%uint8 ID = 140~%uint8 sysid~%uint8 compid~%~%float32 time_delta                  # Time-delta within which the measurement has taken place [s]~%geometry_msgs/Vector3 dist_delta    # Distance travelled within period [m]~%geometry_msgs/Vector3 dist_abs      # Distance travelled [m]~%geometry_msgs/Vector3 velocity      # Velocity [m/s]~%int16 quality                       # Measurement quality indicator (-1 for no quality)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mav_cc16_ODOMETER>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dist_delta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dist_abs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mav_cc16_ODOMETER>))
  "Converts a ROS message object to a list"
  (cl:list 'mav_cc16_ODOMETER
    (cl:cons ':header (header msg))
    (cl:cons ':sysid (sysid msg))
    (cl:cons ':compid (compid msg))
    (cl:cons ':time_delta (time_delta msg))
    (cl:cons ':dist_delta (dist_delta msg))
    (cl:cons ':dist_abs (dist_abs msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':quality (quality msg))
))