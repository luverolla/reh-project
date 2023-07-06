// Generated by gencpp from file nao_nodes/WakeUpRequest.msg
// DO NOT EDIT!


#ifndef NAO_NODES_MESSAGE_WAKEUPREQUEST_H
#define NAO_NODES_MESSAGE_WAKEUPREQUEST_H


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
struct WakeUpRequest_
{
  typedef WakeUpRequest_<ContainerAllocator> Type;

  WakeUpRequest_()
    {
    }
  WakeUpRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::nao_nodes::WakeUpRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nao_nodes::WakeUpRequest_<ContainerAllocator> const> ConstPtr;

}; // struct WakeUpRequest_

typedef ::nao_nodes::WakeUpRequest_<std::allocator<void> > WakeUpRequest;

typedef boost::shared_ptr< ::nao_nodes::WakeUpRequest > WakeUpRequestPtr;
typedef boost::shared_ptr< ::nao_nodes::WakeUpRequest const> WakeUpRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nao_nodes::WakeUpRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nao_nodes::WakeUpRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace nao_nodes

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::nao_nodes::WakeUpRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nao_nodes::WakeUpRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nao_nodes::WakeUpRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nao_nodes::WakeUpRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nao_nodes::WakeUpRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nao_nodes::WakeUpRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nao_nodes::WakeUpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::nao_nodes::WakeUpRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::nao_nodes::WakeUpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nao_nodes/WakeUpRequest";
  }

  static const char* value(const ::nao_nodes::WakeUpRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nao_nodes::WakeUpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::nao_nodes::WakeUpRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nao_nodes::WakeUpRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WakeUpRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nao_nodes::WakeUpRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::nao_nodes::WakeUpRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // NAO_NODES_MESSAGE_WAKEUPREQUEST_H
