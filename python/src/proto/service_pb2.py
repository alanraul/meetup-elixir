# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: service.proto

import sys
_b=sys.version_info[0]<3 and (lambda x:x) or (lambda x:x.encode('latin1'))
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from proto import reply_pb2 as reply__pb2
from proto import request_pb2 as request__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='service.proto',
  package='',
  syntax='proto3',
  serialized_options=None,
  serialized_pb=_b('\n\rservice.proto\x1a\x0breply.proto\x1a\rrequest.proto2-\n\x08Kolombia\x12!\n\x0bHandleEvent\x12\x08.Request\x1a\x06.Reply\"\x00\x62\x06proto3')
  ,
  dependencies=[reply__pb2.DESCRIPTOR,request__pb2.DESCRIPTOR,])



_sym_db.RegisterFileDescriptor(DESCRIPTOR)



_KOLOMBIA = _descriptor.ServiceDescriptor(
  name='Kolombia',
  full_name='Kolombia',
  file=DESCRIPTOR,
  index=0,
  serialized_options=None,
  serialized_start=45,
  serialized_end=90,
  methods=[
  _descriptor.MethodDescriptor(
    name='HandleEvent',
    full_name='Kolombia.HandleEvent',
    index=0,
    containing_service=None,
    input_type=request__pb2._REQUEST,
    output_type=reply__pb2._REPLY,
    serialized_options=None,
  ),
])
_sym_db.RegisterServiceDescriptor(_KOLOMBIA)

DESCRIPTOR.services_by_name['Kolombia'] = _KOLOMBIA

# @@protoc_insertion_point(module_scope)