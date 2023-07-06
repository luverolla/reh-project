// Generated by gencpp from file nao_nodes/WakeUpResponse.msg
// DO NOT EDIT!


#ifndef NAO_NODES_MESSAGE_WAKEUPRESPONSE_H
#define NAO_NODES_MESSAGE_WAKEUPRESPONSE_H


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
struct WakeUpResponse_
{
  typedef WakeUpResponse_<ContainerAllocator> Type;

  WakeUpResponse_()
    : ack()  {
    }
  WakeUpResponse_(const ContainerAllocator& _alloc)
    : ack(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _ack_type;
  _ack_type ack;





  typedef boost::shared_ptr< ::nao_nodes::WakeUpResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nao_nodes::WakeUpResponse_<ContainerAllocator> const> ConstPtr;

}; // struct WakeUpResponse_

typedef ::nao_nodes::WakeUpResponse_<std::allocator<void> > WakeUpResponse;

typedef boost::shared_ptr< ::nao_nodes::WakeUpResponse > WakeUpResponsePtr;
typedef boost::shared_ptr< ::nao_nodes::WakeUpResponse const> WakeUpResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nao_nodes::WakeUpResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nao_nodes::WakeUpResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::nao_nodes::WakeUpResponse_<ContainerAllocator1> & lhs, const ::nao_nodes::WakeUpResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ack == rhs.ack;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::nao_nodes::WakeUpResponse_<ContainerAllocator1> & lhs, const ::nao_nodes::WakeUpResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace nao_nodes

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::nao_nodes::WakeUpResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nao_nodes::WakeUpResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nao_nodes::WakeUpResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nao_nodes::WakeUpResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nao_nodes::WakeUpResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nao_nodes::WakeUpResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nao_nodes::WakeUpResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b6a73f722475d64a28238118997ef482";
  }

  static const char* value(const ::nao_nodes::WakeUpResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb6a73f722475d64aULL;
  static const uint64_t static_value2 = 0x28238118997ef482ULL;
};

template<class ContainerAllocator>
struct DataType< ::nao_nodes::WakeUpResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nao_nodes/WakeUpResponse";
  }

  static const char* value(const ::nao_nodes::WakeUpResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nao_nodes::WakeUpResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string ack\n"
;
  }

  static const char* value(const ::nao_nodes::WakeUpResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nao_nodes::WakeUpResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ack);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WakeUpResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nao_nodes::WakeUpResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nao_nodes::WakeUpResponse_<ContainerAllocator>& v)
  {
    s << indent << "ack: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.ack);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAO_NODES_MESSAGE_WAKEUPRESPONSE_H