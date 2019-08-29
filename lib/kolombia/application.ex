defmodule Kolombia.Application do
  use Application

  import Supervisor.Spec

  def start(_type, _args) do
    children = [
      supervisor(GRPC.Server.Supervisor, [{
        Kolombia.Endpoint,
        String.to_integer(System.get_env("GRPC_PORT"))
      }])
    ]

    opts = [strategy: :one_for_one, name: Kolombia.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
