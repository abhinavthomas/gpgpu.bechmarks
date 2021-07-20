# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: gpgpu.proto

from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


import libcecl_pb2 as libcecl__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='gpgpu.proto',
  package='',
  syntax='proto2',
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_pb=b'\n\x0bgpgpu.proto\x1a\rlibcecl.proto\"\xa0\x01\n\x0c\x42\x65nchmarkRun\x12\x10\n\x08hostname\x18\x01 \x02(\t\x12\x13\n\x0b\x64\x65vice_name\x18\x02 \x02(\t\x12\x17\n\x0f\x62\x65nchmark_suite\x18\x03 \x02(\t\x12\x16\n\x0e\x62\x65nchmark_name\x18\x04 \x02(\t\x12\x14\n\x0c\x64\x61taset_name\x18\x05 \x02(\t\x12\"\n\x03run\x18\x06 \x02(\x0b\x32\x15.LibceclExecutableRun'
  ,
  dependencies=[libcecl__pb2.DESCRIPTOR,])




_BENCHMARKRUN = _descriptor.Descriptor(
  name='BenchmarkRun',
  full_name='BenchmarkRun',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='hostname', full_name='BenchmarkRun.hostname', index=0,
      number=1, type=9, cpp_type=9, label=2,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='device_name', full_name='BenchmarkRun.device_name', index=1,
      number=2, type=9, cpp_type=9, label=2,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='benchmark_suite', full_name='BenchmarkRun.benchmark_suite', index=2,
      number=3, type=9, cpp_type=9, label=2,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='benchmark_name', full_name='BenchmarkRun.benchmark_name', index=3,
      number=4, type=9, cpp_type=9, label=2,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='dataset_name', full_name='BenchmarkRun.dataset_name', index=4,
      number=5, type=9, cpp_type=9, label=2,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='run', full_name='BenchmarkRun.run', index=5,
      number=6, type=11, cpp_type=10, label=2,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto2',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=31,
  serialized_end=191,
)

_BENCHMARKRUN.fields_by_name['run'].message_type = libcecl__pb2._LIBCECLEXECUTABLERUN
DESCRIPTOR.message_types_by_name['BenchmarkRun'] = _BENCHMARKRUN
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

BenchmarkRun = _reflection.GeneratedProtocolMessageType('BenchmarkRun', (_message.Message,), {
  'DESCRIPTOR' : _BENCHMARKRUN,
  '__module__' : 'gpgpu_pb2'
  # @@protoc_insertion_point(class_scope:BenchmarkRun)
  })
_sym_db.RegisterMessage(BenchmarkRun)


# @@protoc_insertion_point(module_scope)