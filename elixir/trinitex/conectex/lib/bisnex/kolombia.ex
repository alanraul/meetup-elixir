defmodule Conectex.Bisnex.Kolombia do
  @moduledoc """
  Módulo para utilizar el Kolombia service
  """

  @spec handle_event(map, GRPC.Channel.t) :: {:ok, Reply.Reply.t}
  def handle_event(data, channel) do
    IO.inspect(data)
    request = Request.new(data)
    IO.inspect(request)

    Kolombia.Stub.handle_event(channel, request)
  end
end
