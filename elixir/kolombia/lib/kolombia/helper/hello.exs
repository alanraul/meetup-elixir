with {:ok, channel} <- Kolombia.start() do
  request = Request.new(message: "Hola mundo")

  Kolombia.Stub.handle_event(channel, request)
  |> IO.inspect()
end
