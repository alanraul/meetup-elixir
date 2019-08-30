defmodule Dealer.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  import Supervisor.Spec

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: Sopi.Worker.start_link(arg)
      # {Sopi.Worker, arg},
      supervisor(GRPC.Server.Supervisor, [
        {Dealer.Endpoint, String.to_integer(System.get_env("GRPC_PORT"))}
      ])
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Dealer.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
