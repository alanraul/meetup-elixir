defmodule Kolombia do
  @moduledoc """
  Documentation for Kolombia.
  """

  alias GRPC.Stub
  alias GRPC.Logger

  @doc """
  Inicia un canal de comunicación con el servidor de GRPC.
  """
  @spec start :: {:ok, GRPC.Channel.t} | {:error, any}
  def start do
    IO.inspect("#{_host()}:#{_port()}")
    Stub.connect("#{_host()}:#{_port()}", [interceptors: [Logger.Client]])
  end

  @spec _host :: String.t
  defp _host, do: Application.get_env(:kolombia, :server)[:host]

  @spec _port :: String.t
  defp _port, do: Application.get_env(:kolombia, :server)[:port]
end
