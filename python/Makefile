##################################################################
#### Development Commands
##################################################################

gen_proto:
	python -m grpc_tools.protoc -I../elixir/trinitex/bisnex/priv/protos \
		--python_out=./src/proto \
		--grpc_python_out=./src/proto \
		../elixir/trinitex/bisnex/priv/protos/*.proto
