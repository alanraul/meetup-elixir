#!/usr/bin/python
# -*- coding: utf-8 -*-

"""The Python implementation of the GRPC client."""

import grpc
import os

from proto import reply_pb2, request_pb2, service_pb2, service_pb2_grpc

def run():
    with grpc.insecure_channel(_host()) as channel:
        stub = service_pb2_grpc.KolombiaStub(channel)
        request = request_pb2.Request(message='Hola mundo')

        return stub.sendMessage(request)

def _host():
    return '%s:%s' % (os.environ['GRPC_HOST'], os.environ['GRPC_PORT'])


if __name__ == '__main__':
    print(run())
