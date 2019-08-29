defmodule Conectex do
  @moduledoc """
  Conectex keeps the contexts that define your domain
  and business logic.
  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  alias GRPC.Stub
  alias GRPC.Logger

  @doc """
  Establece un canal de comunicación con el servidor de GRPC.
  """
  @spec start :: {:ok, GRPC.Channel.t} | {:error, any}
  def start do
    Stub.connect("#{_host()}:#{_port()}", [interceptors: [Logger.Client]])
  end

  @spec _host :: String.t
  defp _host, do: Application.get_env(:conectex, :server)[:host]

  @spec _port :: String.t
  defp _port, do: Application.get_env(:conectex, :server)[:port]
end
