defmodule Kolombia.Service do
  @moduledoc false
  use GRPC.Service, name: "Kolombia"

  rpc :sendMessage, Request, Reply
  rpc :ListNews, Request, stream(Reply)
  rpc :ListMessages, stream(Request), Reply
end

defmodule Kolombia.Stub do
  @moduledoc false
  use GRPC.Stub, service: Kolombia.Service
end
