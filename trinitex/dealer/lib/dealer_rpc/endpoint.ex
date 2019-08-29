defmodule Dealer.Endpoint do
  use GRPC.Endpoint

  intercept GRPC.Logger.Server

  run Dealer.Kolombia.Service
end
