// Generated by gencpp from file nao_nodes/Locomotion.msg
// DO NOT EDIT!


#ifndef NAO_NODES_MESSAGE_LOCOMOTION_H
#define NAO_NODES_MESSAGE_LOCOMOTION_H

#include <ros/service_traits.h>


#include <nao_nodes/LocomotionRequest.h>
#include <nao_nodes/LocomotionResponse.h>


namespace nao_nodes
{

struct Locomotion
{

typedef LocomotionRequest Request;
typedef LocomotionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Locomotion
} // namespace nao_nodes


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::nao_nodes::Locomotion > {
  static const char* value()
  {
    return "f9865562294d6b227aec4d4d15fd8ad1";
  }

  static const char* value(const ::nao_nodes::Locomotion&) { return value(); }
};

template<>
struct DataType< ::nao_nodes::Locomotion > {
  static const char* value()
  {
    return "nao_nodes/Locomotion";
  }

  static const char* value(const ::nao_nodes::Locomotion&) { return value(); }
};


// service_traits::MD5Sum< ::nao_nodes::LocomotionRequest> should match
// service_traits::MD5Sum< ::nao_nodes::Locomotion >
template<>
struct MD5Sum< ::nao_nodes::LocomotionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::nao_nodes::Locomotion >::value();
  }
  static const char* value(const ::nao_nodes::LocomotionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::nao_nodes::LocomotionRequest> should match
// service_traits::DataType< ::nao_nodes::Locomotion >
template<>
struct DataType< ::nao_nodes::LocomotionRequest>
{
  static const char* value()
  {
    return DataType< ::nao_nodes::Locomotion >::value();
  }
  static const char* value(const ::nao_nodes::LocomotionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::nao_nodes::LocomotionResponse> should match
// service_traits::MD5Sum< ::nao_nodes::Locomotion >
template<>
struct MD5Sum< ::nao_nodes::LocomotionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::nao_nodes::Locomotion >::value();
  }
  static const char* value(const ::nao_nodes::LocomotionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::nao_nodes::LocomotionResponse> should match
// service_traits::DataType< ::nao_nodes::Locomotion >
template<>
struct DataType< ::nao_nodes::LocomotionResponse>
{
  static const char* value()
  {
    return DataType< ::nao_nodes::Locomotion >::value();
  }
  static const char* value(const ::nao_nodes::LocomotionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NAO_NODES_MESSAGE_LOCOMOTION_H