defmodule Kolombia.Server do
  use GRPC.Server, service: Kolombia.Service

  @spec handle_event(Request.t, GRPC.Server.Stream.t) :: Reply.t
  def handle_event(request, _stream) do
    Reply.new(response: "Hello #{request.message}")
  end
end
