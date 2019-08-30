with {:ok, channel} <- Kolombia.start() do
  request = Request.new(message: "Hola mundo")

  Kolombia.Stub.send_message(channel, request)
  |> IO.inspect()
end
