// Generated by gencpp from file project/Text2SpeechRequest.msg
// DO NOT EDIT!


#ifndef PROJECT_MESSAGE_TEXT2SPEECHREQUEST_H
#define PROJECT_MESSAGE_TEXT2SPEECHREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace project
{
template <class ContainerAllocator>
struct Text2SpeechRequest_
{
  typedef Text2SpeechRequest_<ContainerAllocator> Type;

  Text2SpeechRequest_()
    : speech()  {
    }
  Text2SpeechRequest_(const ContainerAllocator& _alloc)
    : speech(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _speech_type;
  _speech_type speech;





  typedef boost::shared_ptr< ::project::Text2SpeechRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::project::Text2SpeechRequest_<ContainerAllocator> const> ConstPtr;

}; // struct Text2SpeechRequest_

typedef ::project::Text2SpeechRequest_<std::allocator<void> > Text2SpeechRequest;

typedef boost::shared_ptr< ::project::Text2SpeechRequest > Text2SpeechRequestPtr;
typedef boost::shared_ptr< ::project::Text2SpeechRequest const> Text2SpeechRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::project::Text2SpeechRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::project::Text2SpeechRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::project::Text2SpeechRequest_<ContainerAllocator1> & lhs, const ::project::Text2SpeechRequest_<ContainerAllocator2> & rhs)
{
  return lhs.speech == rhs.speech;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::project::Text2SpeechRequest_<ContainerAllocator1> & lhs, const ::project::Text2SpeechRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace project

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::project::Text2SpeechRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::project::Text2SpeechRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::project::Text2SpeechRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::project::Text2SpeechRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::project::Text2SpeechRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::project::Text2SpeechRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::project::Text2SpeechRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0f212b08e2dfacb9148fa1a62023e9ac";
  }

  static const char* value(const ::project::Text2SpeechRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0f212b08e2dfacb9ULL;
  static const uint64_t static_value2 = 0x148fa1a62023e9acULL;
};

template<class ContainerAllocator>
struct DataType< ::project::Text2SpeechRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "project/Text2SpeechRequest";
  }

  static const char* value(const ::project::Text2SpeechRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::project::Text2SpeechRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string speech\n"
;
  }

  static const char* value(const ::project::Text2SpeechRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::project::Text2SpeechRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.speech);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Text2SpeechRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::project::Text2SpeechRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::project::Text2SpeechRequest_<ContainerAllocator>& v)
  {
    s << indent << "speech: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.speech);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PROJECT_MESSAGE_TEXT2SPEECHREQUEST_H