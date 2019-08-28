defmodule Kolombia.Application do
  use Application

  import Supervisor.Spec

  def start(_type, _args) do
    children = [
      supervisor(GRPC.Server.Supervisor, [{Kolombia.Endpoint, 50051}])
    ]

    opts = [strategy: :one_for_one, name: Kolombia.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
