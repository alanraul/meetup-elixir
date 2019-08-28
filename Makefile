##################################################################
#### Bootstrap Commands
##################################################################

bootstrap:
	mix deps.get && mix deps.compile

reset:
	rm -rf ./deps && rm -rf ./_build

##################################################################
#### Development Commands
##################################################################

gen_proto:
	protoc -I ./priv/protos --elixir_out=./lib ./priv/protos/${file}.proto

gen_proto.service:
	protoc -I ./priv/protos --elixir_out=plugins=grpc:./lib ./priv/protos/${file}.proto

deps.update:
	mix deps.clean --unused \
	&& mix deps.get \
	&& mix deps.compile
