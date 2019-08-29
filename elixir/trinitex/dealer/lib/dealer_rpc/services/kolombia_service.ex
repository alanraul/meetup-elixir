defmodule Dealer.Kolombia.Service do
  @moduledoc """
  Modulo para manejar las peticiones al Kolombia Service
  """
  use GRPC.Server, service: Kolombia.Service

  @spec handle_event(Request.t, GRPC.Server.Stream.t) :: Reply.t
  def handle_event(request, _stream) do
    Reply.new(response: "El servidor recibió tú: #{request.message}")
  end
end
