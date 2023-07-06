// Generated by gencpp from file nao_nodes/AudioPlayer.msg
// DO NOT EDIT!


#ifndef NAO_NODES_MESSAGE_AUDIOPLAYER_H
#define NAO_NODES_MESSAGE_AUDIOPLAYER_H

#include <ros/service_traits.h>


#include <nao_nodes/AudioPlayerRequest.h>
#include <nao_nodes/AudioPlayerResponse.h>


namespace nao_nodes
{

struct AudioPlayer
{

typedef AudioPlayerRequest Request;
typedef AudioPlayerResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AudioPlayer
} // namespace nao_nodes


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::nao_nodes::AudioPlayer > {
  static const char* value()
  {
    return "773c9cd39742097a22777897dedef274";
  }

  static const char* value(const ::nao_nodes::AudioPlayer&) { return value(); }
};

template<>
struct DataType< ::nao_nodes::AudioPlayer > {
  static const char* value()
  {
    return "nao_nodes/AudioPlayer";
  }

  static const char* value(const ::nao_nodes::AudioPlayer&) { return value(); }
};


// service_traits::MD5Sum< ::nao_nodes::AudioPlayerRequest> should match
// service_traits::MD5Sum< ::nao_nodes::AudioPlayer >
template<>
struct MD5Sum< ::nao_nodes::AudioPlayerRequest>
{
  static const char* value()
  {
    return MD5Sum< ::nao_nodes::AudioPlayer >::value();
  }
  static const char* value(const ::nao_nodes::AudioPlayerRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::nao_nodes::AudioPlayerRequest> should match
// service_traits::DataType< ::nao_nodes::AudioPlayer >
template<>
struct DataType< ::nao_nodes::AudioPlayerRequest>
{
  static const char* value()
  {
    return DataType< ::nao_nodes::AudioPlayer >::value();
  }
  static const char* value(const ::nao_nodes::AudioPlayerRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::nao_nodes::AudioPlayerResponse> should match
// service_traits::MD5Sum< ::nao_nodes::AudioPlayer >
template<>
struct MD5Sum< ::nao_nodes::AudioPlayerResponse>
{
  static const char* value()
  {
    return MD5Sum< ::nao_nodes::AudioPlayer >::value();
  }
  static const char* value(const ::nao_nodes::AudioPlayerResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::nao_nodes::AudioPlayerResponse> should match
// service_traits::DataType< ::nao_nodes::AudioPlayer >
template<>
struct DataType< ::nao_nodes::AudioPlayerResponse>
{
  static const char* value()
  {
    return DataType< ::nao_nodes::AudioPlayer >::value();
  }
  static const char* value(const ::nao_nodes::AudioPlayerResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NAO_NODES_MESSAGE_AUDIOPLAYER_H