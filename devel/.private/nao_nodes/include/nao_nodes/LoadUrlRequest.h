// Generated by gencpp from file nao_nodes/LoadUrlRequest.msg
// DO NOT EDIT!


#ifndef NAO_NODES_MESSAGE_LOADURLREQUEST_H
#define NAO_NODES_MESSAGE_LOADURLREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace nao_nodes
{
template <class ContainerAllocator>
struct LoadUrlRequest_
{
  typedef LoadUrlRequest_<ContainerAllocator> Type;

  LoadUrlRequest_()
    : url()  {
    }
  LoadUrlRequest_(const ContainerAllocator& _alloc)
    : url(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _url_type;
  _url_type url;





  typedef boost::shared_ptr< ::nao_nodes::LoadUrlRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nao_nodes::LoadUrlRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LoadUrlRequest_

typedef ::nao_nodes::LoadUrlRequest_<std::allocator<void> > LoadUrlRequest;

typedef boost::shared_ptr< ::nao_nodes::LoadUrlRequest > LoadUrlRequestPtr;
typedef boost::shared_ptr< ::nao_nodes::LoadUrlRequest const> LoadUrlRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nao_nodes::LoadUrlRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nao_nodes::LoadUrlRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::nao_nodes::LoadUrlRequest_<ContainerAllocator1> & lhs, const ::nao_nodes::LoadUrlRequest_<ContainerAllocator2> & rhs)
{
  return lhs.url == rhs.url;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::nao_nodes::LoadUrlRequest_<ContainerAllocator1> & lhs, const ::nao_nodes::LoadUrlRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace nao_nodes

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::nao_nodes::LoadUrlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nao_nodes::LoadUrlRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nao_nodes::LoadUrlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nao_nodes::LoadUrlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nao_nodes::LoadUrlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nao_nodes::LoadUrlRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nao_nodes::LoadUrlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8b8fc5815211e556073b8281ccf07035";
  }

  static const char* value(const ::nao_nodes::LoadUrlRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8b8fc5815211e556ULL;
  static const uint64_t static_value2 = 0x073b8281ccf07035ULL;
};

template<class ContainerAllocator>
struct DataType< ::nao_nodes::LoadUrlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nao_nodes/LoadUrlRequest";
  }

  static const char* value(const ::nao_nodes::LoadUrlRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nao_nodes::LoadUrlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string url\n"
;
  }

  static const char* value(const ::nao_nodes::LoadUrlRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nao_nodes::LoadUrlRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.url);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LoadUrlRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nao_nodes::LoadUrlRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nao_nodes::LoadUrlRequest_<ContainerAllocator>& v)
  {
    s << indent << "url: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.url);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAO_NODES_MESSAGE_LOADURLREQUEST_H
