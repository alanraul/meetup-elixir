defmodule Reply do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: String.t()
        }
  defstruct [:response]

  field :response, 1, type: :string
end
