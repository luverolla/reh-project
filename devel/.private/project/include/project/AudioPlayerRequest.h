// Generated by gencpp from file project/AudioPlayerRequest.msg
// DO NOT EDIT!


#ifndef PROJECT_MESSAGE_AUDIOPLAYERREQUEST_H
#define PROJECT_MESSAGE_AUDIOPLAYERREQUEST_H


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
struct AudioPlayerRequest_
{
  typedef AudioPlayerRequest_<ContainerAllocator> Type;

  AudioPlayerRequest_()
    : path()  {
    }
  AudioPlayerRequest_(const ContainerAllocator& _alloc)
    : path(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _path_type;
  _path_type path;





  typedef boost::shared_ptr< ::project::AudioPlayerRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::project::AudioPlayerRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AudioPlayerRequest_

typedef ::project::AudioPlayerRequest_<std::allocator<void> > AudioPlayerRequest;

typedef boost::shared_ptr< ::project::AudioPlayerRequest > AudioPlayerRequestPtr;
typedef boost::shared_ptr< ::project::AudioPlayerRequest const> AudioPlayerRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::project::AudioPlayerRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::project::AudioPlayerRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::project::AudioPlayerRequest_<ContainerAllocator1> & lhs, const ::project::AudioPlayerRequest_<ContainerAllocator2> & rhs)
{
  return lhs.path == rhs.path;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::project::AudioPlayerRequest_<ContainerAllocator1> & lhs, const ::project::AudioPlayerRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace project

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::project::AudioPlayerRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::project::AudioPlayerRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::project::AudioPlayerRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::project::AudioPlayerRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::project::AudioPlayerRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::project::AudioPlayerRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::project::AudioPlayerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1d00cd540af97efeb6b1589112fab63e";
  }

  static const char* value(const ::project::AudioPlayerRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1d00cd540af97efeULL;
  static const uint64_t static_value2 = 0xb6b1589112fab63eULL;
};

template<class ContainerAllocator>
struct DataType< ::project::AudioPlayerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "project/AudioPlayerRequest";
  }

  static const char* value(const ::project::AudioPlayerRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::project::AudioPlayerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string path\n"
;
  }

  static const char* value(const ::project::AudioPlayerRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::project::AudioPlayerRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AudioPlayerRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::project::AudioPlayerRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::project::AudioPlayerRequest_<ContainerAllocator>& v)
  {
    s << indent << "path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.path);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PROJECT_MESSAGE_AUDIOPLAYERREQUEST_H
