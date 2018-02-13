// Generated by gencpp from file drive_ros_msgs/VehicleEncoder.msg
// DO NOT EDIT!


#ifndef DRIVE_ROS_MSGS_MESSAGE_VEHICLEENCODER_H
#define DRIVE_ROS_MSGS_MESSAGE_VEHICLEENCODER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <drive_ros_msgs/EncoderLinear.h>

namespace drive_ros_msgs
{
template <class ContainerAllocator>
struct VehicleEncoder_
{
  typedef VehicleEncoder_<ContainerAllocator> Type;

  VehicleEncoder_()
    : header()
    , encoder()  {
    }
  VehicleEncoder_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , encoder()  {
  (void)_alloc;
      encoder.assign( ::drive_ros_msgs::EncoderLinear_<ContainerAllocator> (_alloc));
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef boost::array< ::drive_ros_msgs::EncoderLinear_<ContainerAllocator> , 4>  _encoder_type;
  _encoder_type encoder;


    enum { MOTOR = 0u };
     enum { FRONT_WHEEL_LEFT = 0u };
     enum { FRONT_WHEEL_RIGHT = 1u };
     enum { REAR_WHEEL_LEFT = 2u };
     enum { REAR_WHEEL_RIGHT = 3u };
 

  typedef boost::shared_ptr< ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> const> ConstPtr;

}; // struct VehicleEncoder_

typedef ::drive_ros_msgs::VehicleEncoder_<std::allocator<void> > VehicleEncoder;

typedef boost::shared_ptr< ::drive_ros_msgs::VehicleEncoder > VehicleEncoderPtr;
typedef boost::shared_ptr< ::drive_ros_msgs::VehicleEncoder const> VehicleEncoderConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace drive_ros_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'drive_ros_msgs': ['/home/nvidia/catkin_ws/src/drive_ros_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a9cb468b8c6666bc24bad1a31a5a51a0";
  }

  static const char* value(const ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa9cb468b8c6666bcULL;
  static const uint64_t static_value2 = 0x24bad1a31a5a51a0ULL;
};

template<class ContainerAllocator>
struct DataType< ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> >
{
  static const char* value()
  {
    return "drive_ros_msgs/VehicleEncoder";
  }

  static const char* value(const ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
# array of encoders\n\
EncoderLinear[4] encoder\n\
\n\
# only one motor encoder\n\
uint8 MOTOR=0\n\
\n\
# 4 wheel encoders\n\
uint8 FRONT_WHEEL_LEFT=0\n\
uint8 FRONT_WHEEL_RIGHT=1\n\
uint8 REAR_WHEEL_LEFT=2\n\
uint8 REAR_WHEEL_RIGHT=3\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: drive_ros_msgs/EncoderLinear\n\
# linear encoder message\n\
Header header\n\
\n\
# absolut position of encoder in [m]\n\
float32 pos_abs\n\
float32 pos_abs_var\n\
\n\
# relative position of encoder in [m] compared to last message\n\
float32 pos_rel\n\
float32 pos_rel_var\n\
\n\
# velocity of encoder in [m/s]\n\
float32 vel\n\
float32 vel_var\n\
";
  }

  static const char* value(const ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.encoder);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VehicleEncoder_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::drive_ros_msgs::VehicleEncoder_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "encoder[]" << std::endl;
    for (size_t i = 0; i < v.encoder.size(); ++i)
    {
      s << indent << "  encoder[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::drive_ros_msgs::EncoderLinear_<ContainerAllocator> >::stream(s, indent + "    ", v.encoder[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DRIVE_ROS_MSGS_MESSAGE_VEHICLEENCODER_H