// Generated by gencpp from file nao_nodes/Text2Speech.msg
// DO NOT EDIT!


#ifndef NAO_NODES_MESSAGE_TEXT2SPEECH_H
#define NAO_NODES_MESSAGE_TEXT2SPEECH_H

#include <ros/service_traits.h>


#include <nao_nodes/Text2SpeechRequest.h>
#include <nao_nodes/Text2SpeechResponse.h>


namespace nao_nodes
{

struct Text2Speech
{

typedef Text2SpeechRequest Request;
typedef Text2SpeechResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Text2Speech
} // namespace nao_nodes


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::nao_nodes::Text2Speech > {
  static const char* value()
  {
    return "8be93dfc13258654eb30fdcda5227e42";
  }

  static const char* value(const ::nao_nodes::Text2Speech&) { return value(); }
};

template<>
struct DataType< ::nao_nodes::Text2Speech > {
  static const char* value()
  {
    return "nao_nodes/Text2Speech";
  }

  static const char* value(const ::nao_nodes::Text2Speech&) { return value(); }
};


// service_traits::MD5Sum< ::nao_nodes::Text2SpeechRequest> should match
// service_traits::MD5Sum< ::nao_nodes::Text2Speech >
template<>
struct MD5Sum< ::nao_nodes::Text2SpeechRequest>
{
  static const char* value()
  {
    return MD5Sum< ::nao_nodes::Text2Speech >::value();
  }
  static const char* value(const ::nao_nodes::Text2SpeechRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::nao_nodes::Text2SpeechRequest> should match
// service_traits::DataType< ::nao_nodes::Text2Speech >
template<>
struct DataType< ::nao_nodes::Text2SpeechRequest>
{
  static const char* value()
  {
    return DataType< ::nao_nodes::Text2Speech >::value();
  }
  static const char* value(const ::nao_nodes::Text2SpeechRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::nao_nodes::Text2SpeechResponse> should match
// service_traits::MD5Sum< ::nao_nodes::Text2Speech >
template<>
struct MD5Sum< ::nao_nodes::Text2SpeechResponse>
{
  static const char* value()
  {
    return MD5Sum< ::nao_nodes::Text2Speech >::value();
  }
  static const char* value(const ::nao_nodes::Text2SpeechResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::nao_nodes::Text2SpeechResponse> should match
// service_traits::DataType< ::nao_nodes::Text2Speech >
template<>
struct DataType< ::nao_nodes::Text2SpeechResponse>
{
  static const char* value()
  {
    return DataType< ::nao_nodes::Text2Speech >::value();
  }
  static const char* value(const ::nao_nodes::Text2SpeechResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NAO_NODES_MESSAGE_TEXT2SPEECH_H