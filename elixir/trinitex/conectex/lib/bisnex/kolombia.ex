defmodule Conectex.Bisnex.Kolombia do
  @moduledoc """
  Módulo para utilizar el Kolombia service
  """

  @spec send_message(map, GRPC.Channel.t) :: {:ok, Reply.t}
  def send_message(data, channel) do
    Kolombia.Stub.send_message(channel, Request.new(data))
  end

  @spec list_news(GRPC.Channel.t) :: {:ok, GRPC.Server.Stream.t}
  def list_news(channel) do
    with {:ok, stream} <- Kolombia.Stub.list_news(channel, Request.new()) do
      Enum.each(stream, fn {:ok, response} ->
        IO.inspect(response)
      end)
    end
  end

  @spec list_messages(GRPC.Channel.t) :: {:ok, Reply.t}
  def list_messages(channel) do
    stream  = Kolombia.Stub.list_messages(channel)

    Enum.each(1..10, fn x ->
      opts = if x == 10, do: [end_stream: true], else: []

      GRPC.Stub.send_request(stream, Request.new(message: "Hola #{x}"), opts)
    end)

    GRPC.Stub.recv(stream)
  end
end
