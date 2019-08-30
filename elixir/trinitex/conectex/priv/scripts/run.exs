alias Conectex.Bisnex.Kolombia

with {:ok, channel} <- Conectex.start() do
  Kolombia.send_message(%{message: "Hola mundo"}, channel)
  |> IO.inspect(label: "client -> server")


  Kolombia.list_news(channel)
  |> IO.inspect(label: "client -> server stream")

  Kolombia.list_messages(channel)
  |> IO.inspect(label: "client stream -> server")
end
