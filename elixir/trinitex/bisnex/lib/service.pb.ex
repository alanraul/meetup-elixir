defmodule Kolombia.Service do
  @moduledoc false
  use GRPC.Service, name: "Kolombia"

  rpc :HandleEvent, Request, Reply
end

defmodule Kolombia.Stub do
  @moduledoc false
  use GRPC.Stub, service: Kolombia.Service
end
