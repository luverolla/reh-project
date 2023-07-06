// Generated by gencpp from file sound_recognition/SpeechData.msg
// DO NOT EDIT!


#ifndef SOUND_RECOGNITION_MESSAGE_SPEECHDATA_H
#define SOUND_RECOGNITION_MESSAGE_SPEECHDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sound_recognition
{
template <class ContainerAllocator>
struct SpeechData_
{
  typedef SpeechData_<ContainerAllocator> Type;

  SpeechData_()
    : data()
    , start_time(0.0)
    , end_time(0.0)  {
    }
  SpeechData_(const ContainerAllocator& _alloc)
    : data(_alloc)
    , start_time(0.0)
    , end_time(0.0)  {
  (void)_alloc;
    }



   typedef std::vector<int16_t, typename ContainerAllocator::template rebind<int16_t>::other >  _data_type;
  _data_type data;

   typedef double _start_time_type;
  _start_time_type start_time;

   typedef double _end_time_type;
  _end_time_type end_time;





  typedef boost::shared_ptr< ::sound_recognition::SpeechData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sound_recognition::SpeechData_<ContainerAllocator> const> ConstPtr;

}; // struct SpeechData_

typedef ::sound_recognition::SpeechData_<std::allocator<void> > SpeechData;

typedef boost::shared_ptr< ::sound_recognition::SpeechData > SpeechDataPtr;
typedef boost::shared_ptr< ::sound_recognition::SpeechData const> SpeechDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sound_recognition::SpeechData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sound_recognition::SpeechData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sound_recognition::SpeechData_<ContainerAllocator1> & lhs, const ::sound_recognition::SpeechData_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data &&
    lhs.start_time == rhs.start_time &&
    lhs.end_time == rhs.end_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sound_recognition::SpeechData_<ContainerAllocator1> & lhs, const ::sound_recognition::SpeechData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sound_recognition

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::sound_recognition::SpeechData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sound_recognition::SpeechData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sound_recognition::SpeechData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sound_recognition::SpeechData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sound_recognition::SpeechData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sound_recognition::SpeechData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sound_recognition::SpeechData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6724f2ce0350385e91e985e0979bee3c";
  }

  static const char* value(const ::sound_recognition::SpeechData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6724f2ce0350385eULL;
  static const uint64_t static_value2 = 0x91e985e0979bee3cULL;
};

template<class ContainerAllocator>
struct DataType< ::sound_recognition::SpeechData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sound_recognition/SpeechData";
  }

  static const char* value(const ::sound_recognition::SpeechData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sound_recognition::SpeechData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16[] data\n"
"float64 start_time\n"
"float64 end_time\n"
;
  }

  static const char* value(const ::sound_recognition::SpeechData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sound_recognition::SpeechData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
      stream.next(m.start_time);
      stream.next(m.end_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SpeechData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sound_recognition::SpeechData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sound_recognition::SpeechData_<ContainerAllocator>& v)
  {
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<int16_t>::stream(s, indent + "  ", v.data[i]);
    }
    s << indent << "start_time: ";
    Printer<double>::stream(s, indent + "  ", v.start_time);
    s << indent << "end_time: ";
    Printer<double>::stream(s, indent + "  ", v.end_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SOUND_RECOGNITION_MESSAGE_SPEECHDATA_H