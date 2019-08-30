defmodule Request do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: String.t()
        }
  defstruct [:message]

  field :message, 1, type: :string
end

defmodule Reply do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: String.t()
        }
  defstruct [:response]

  field :response, 1, type: :string
end

defmodule Kolombia.Service do
  @moduledoc false
  use GRPC.Service, name: "Kolombia"

  rpc :SendMessage, Request, Reply
end

defmodule Kolombia.Stub do
  @moduledoc false
  use GRPC.Stub, service: Kolombia.Service
end
