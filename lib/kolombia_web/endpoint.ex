defmodule Kolombia.Endpoint do
  use GRPC.Endpoint

  intercept GRPC.Logger.Server

  run Kolombia.Server
end
