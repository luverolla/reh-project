// Generated by gencpp from file nao_nodes/WakeUp.msg
// DO NOT EDIT!


#ifndef NAO_NODES_MESSAGE_WAKEUP_H
#define NAO_NODES_MESSAGE_WAKEUP_H

#include <ros/service_traits.h>


#include <nao_nodes/WakeUpRequest.h>
#include <nao_nodes/WakeUpResponse.h>


namespace nao_nodes
{

struct WakeUp
{

typedef WakeUpRequest Request;
typedef WakeUpResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct WakeUp
} // namespace nao_nodes


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::nao_nodes::WakeUp > {
  static const char* value()
  {
    return "b6a73f722475d64a28238118997ef482";
  }

  static const char* value(const ::nao_nodes::WakeUp&) { return value(); }
};

template<>
struct DataType< ::nao_nodes::WakeUp > {
  static const char* value()
  {
    return "nao_nodes/WakeUp";
  }

  static const char* value(const ::nao_nodes::WakeUp&) { return value(); }
};


// service_traits::MD5Sum< ::nao_nodes::WakeUpRequest> should match
// service_traits::MD5Sum< ::nao_nodes::WakeUp >
template<>
struct MD5Sum< ::nao_nodes::WakeUpRequest>
{
  static const char* value()
  {
    return MD5Sum< ::nao_nodes::WakeUp >::value();
  }
  static const char* value(const ::nao_nodes::WakeUpRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::nao_nodes::WakeUpRequest> should match
// service_traits::DataType< ::nao_nodes::WakeUp >
template<>
struct DataType< ::nao_nodes::WakeUpRequest>
{
  static const char* value()
  {
    return DataType< ::nao_nodes::WakeUp >::value();
  }
  static const char* value(const ::nao_nodes::WakeUpRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::nao_nodes::WakeUpResponse> should match
// service_traits::MD5Sum< ::nao_nodes::WakeUp >
template<>
struct MD5Sum< ::nao_nodes::WakeUpResponse>
{
  static const char* value()
  {
    return MD5Sum< ::nao_nodes::WakeUp >::value();
  }
  static const char* value(const ::nao_nodes::WakeUpResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::nao_nodes::WakeUpResponse> should match
// service_traits::DataType< ::nao_nodes::WakeUp >
template<>
struct DataType< ::nao_nodes::WakeUpResponse>
{
  static const char* value()
  {
    return DataType< ::nao_nodes::WakeUp >::value();
  }
  static const char* value(const ::nao_nodes::WakeUpResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NAO_NODES_MESSAGE_WAKEUP_H