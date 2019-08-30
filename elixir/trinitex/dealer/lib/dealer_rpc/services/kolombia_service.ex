defmodule Dealer.Kolombia.Service do
  @moduledoc """
  Modulo para manejar las peticiones al Kolombia Service
  """
  use GRPC.Server, service: Kolombia.Service

  @spec send_message(Request.t, GRPC.Server.Stream.t) :: Reply.t
  def send_message(request, _stream) do
    Reply.new(response: "El servidor recibió tú: #{request.message}")
  end

  @spec list_news(Request.t, GRPC.Server.Stream.t) :: Reply.t
  def list_news(request, stream) do
    "../../../priv/news.json"
    |> Path.expand(__DIR__)
    |> File.read!
    |> Poison.decode!
    |> Map.get("articles")
    |> Enum.each(fn article ->
      GRPC.Server.send_reply(stream, Reply.new(response: article["title"]))
    end)
  end

  @spec list_messages(map, GRPC.Server.Stream.t) :: Reply.t
  def list_messages(request, _stream) do
    count =
      request
      |> Enum.reduce(0, fn message, acc ->
        IO.inspect(message)
        acc + 1
      end)

    Reply.new(response: "El servidor recibió #{count} mensajes")
  end
end
