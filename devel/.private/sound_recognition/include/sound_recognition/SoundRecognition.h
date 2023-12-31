// Generated by gencpp from file sound_recognition/SoundRecognition.msg
// DO NOT EDIT!


#ifndef SOUND_RECOGNITION_MESSAGE_SOUNDRECOGNITION_H
#define SOUND_RECOGNITION_MESSAGE_SOUNDRECOGNITION_H

#include <ros/service_traits.h>


#include <sound_recognition/SoundRecognitionRequest.h>
#include <sound_recognition/SoundRecognitionResponse.h>


namespace sound_recognition
{

struct SoundRecognition
{

typedef SoundRecognitionRequest Request;
typedef SoundRecognitionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SoundRecognition
} // namespace sound_recognition


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sound_recognition::SoundRecognition > {
  static const char* value()
  {
    return "ea23f97416b04c6151d2b576c0665ac1";
  }

  static const char* value(const ::sound_recognition::SoundRecognition&) { return value(); }
};

template<>
struct DataType< ::sound_recognition::SoundRecognition > {
  static const char* value()
  {
    return "sound_recognition/SoundRecognition";
  }

  static const char* value(const ::sound_recognition::SoundRecognition&) { return value(); }
};


// service_traits::MD5Sum< ::sound_recognition::SoundRecognitionRequest> should match
// service_traits::MD5Sum< ::sound_recognition::SoundRecognition >
template<>
struct MD5Sum< ::sound_recognition::SoundRecognitionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sound_recognition::SoundRecognition >::value();
  }
  static const char* value(const ::sound_recognition::SoundRecognitionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sound_recognition::SoundRecognitionRequest> should match
// service_traits::DataType< ::sound_recognition::SoundRecognition >
template<>
struct DataType< ::sound_recognition::SoundRecognitionRequest>
{
  static const char* value()
  {
    return DataType< ::sound_recognition::SoundRecognition >::value();
  }
  static const char* value(const ::sound_recognition::SoundRecognitionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sound_recognition::SoundRecognitionResponse> should match
// service_traits::MD5Sum< ::sound_recognition::SoundRecognition >
template<>
struct MD5Sum< ::sound_recognition::SoundRecognitionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sound_recognition::SoundRecognition >::value();
  }
  static const char* value(const ::sound_recognition::SoundRecognitionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sound_recognition::SoundRecognitionResponse> should match
// service_traits::DataType< ::sound_recognition::SoundRecognition >
template<>
struct DataType< ::sound_recognition::SoundRecognitionResponse>
{
  static const char* value()
  {
    return DataType< ::sound_recognition::SoundRecognition >::value();
  }
  static const char* value(const ::sound_recognition::SoundRecognitionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SOUND_RECOGNITION_MESSAGE_SOUNDRECOGNITION_H
