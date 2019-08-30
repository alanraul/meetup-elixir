alias Conectex.Bisnex.Kolombia

with {:ok, channel} <- Conectex.start() do
  Kolombia.send_message(%{message: "Hola mundo"}, channel)
  |> IO.inspect()


  Kolombia.list_news(channel)
  |> IO.inspect()

  Kolombia.list_messages(channel)
  |> IO.inspect()
end
