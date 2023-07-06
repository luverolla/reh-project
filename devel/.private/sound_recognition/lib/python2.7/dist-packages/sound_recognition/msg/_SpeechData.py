# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from sound_recognition/SpeechData.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SpeechData(genpy.Message):
  _md5sum = "6724f2ce0350385e91e985e0979bee3c"
  _type = "sound_recognition/SpeechData"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int16[] data
float64 start_time
float64 end_time"""
  __slots__ = ['data','start_time','end_time']
  _slot_types = ['int16[]','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       data,start_time,end_time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SpeechData, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.data is None:
        self.data = []
      if self.start_time is None:
        self.start_time = 0.
      if self.end_time is None:
        self.end_time = 0.
    else:
      self.data = []
      self.start_time = 0.
      self.end_time = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(struct.Struct(pattern).pack(*self.data))
      _x = self
      buff.write(_get_struct_2d().pack(_x.start_time, _x.end_time))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.data = s.unpack(str[start:end])
      _x = self
      start = end
      end += 16
      (_x.start_time, _x.end_time,) = _get_struct_2d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sh'%length
      buff.write(self.data.tostring())
      _x = self
      buff.write(_get_struct_2d().pack(_x.start_time, _x.end_time))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sh'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.data = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=length)
      _x = self
      start = end
      end += 16
      (_x.start_time, _x.end_time,) = _get_struct_2d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2d = None
def _get_struct_2d():
    global _struct_2d
    if _struct_2d is None:
        _struct_2d = struct.Struct("<2d")
    return _struct_2d
