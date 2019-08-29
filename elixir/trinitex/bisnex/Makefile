gen_proto:
	protoc -I ./priv/protos --elixir_out=./lib ./priv/protos/${file}.proto

gen_proto.service:
	protoc -I ./priv/protos --elixir_out=plugins=grpc:./lib ./priv/protos/${file}.proto
