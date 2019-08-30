defmodule Kolombia.Server do
  use GRPC.Server, service: Kolombia.Service

  @spec send_message(Request.t, GRPC.Server.Stream.t()) :: Reply.t
  def send_message(request, _stream) do
    Reply.new(response: "El servidor recibió tú: #{request.message}")
  end
end
