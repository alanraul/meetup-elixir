alias Conectex.Bisnex.Kolombia

with {:ok, channel} <- Conectex.start() do
  Kolombia.handle_event(%{message: "Hola mundo"}, channel)
  |> IO.inspect()
end
