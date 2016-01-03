all: build push

build.erlang.base:
	docker build -t matteosister/erlang-build-deps erlang-build-deps

build.erlang:
	docker build -t matteosister/erlang:17.4.1 erlang/17.4.1
	docker build -t matteosister/erlang:17.4 erlang/17.4.1
	docker build -t matteosister/erlang:17 erlang/17.4.1
	docker build -t matteosister/erlang:17.5.6.3 erlang/17.5.6.3
	docker build -t matteosister/erlang:17.5.6 erlang/17.5.6.3
	docker build -t matteosister/erlang:17.5 erlang/17.5.6.3
	docker build -t matteosister/erlang:17 erlang/17.5.6.3
	docker build -t matteosister/erlang:18.0 erlang/18.0
	docker build -t matteosister/erlang:18.0.1 erlang/18.0.1
	docker build -t matteosister/erlang:18.0.2 erlang/18.0.2
	docker build -t matteosister/erlang:18.0.3 erlang/18.0.3
	docker build -t matteosister/erlang:18.1 erlang/18.1
	docker build -t matteosister/erlang:18.2 erlang/18.2
	docker build -t --no-cache matteosister/erlang:18 erlang/18.2
	docker build -t --no-cache matteosister/erlang:latest erlang/18.2

build.elixir:
	docker build -t matteosister/elixir:1.0.0 elixir/1.0.0
	docker build -t matteosister/elixir:1.0.1 elixir/1.0.1
	docker build -t matteosister/elixir:1.0.2 elixir/1.0.2
	docker build -t matteosister/elixir:1.0.3 elixir/1.0.3
	docker build -t matteosister/elixir:1.0.4 elixir/1.0.4
	docker build -t matteosister/elixir:1.0.5 elixir/1.0.5
	#docker build -t matteosister/elixir:1.1.0-beta elixir/1.1.0-beta
	#docker build -t matteosister/elixir:1.1.0-rc.0 elixir/1.1.0-rc.0
	docker build -t matteosister/elixir:1.1.0 elixir/1.1.0
	docker build -t matteosister/elixir:1.1.1 elixir/1.1.1
	docker build -t matteosister/elixir:1.2.0 elixir/1.2.0
	docker build -t matteosister/elixir:1.0 elixir/1.0.5
	docker build -t matteosister/elixir:1.1 elixir/1.1.1
	docker build -t matteosister/elixir:1.2 elixir/1.2.0
	docker build -t matteosister/elixir:1 elixir/1.2.0
	docker build -t matteosister/elixir:latest elixir/1.2.0

build.mix:
	docker build -t matteosister/mix:latest mix/latest

build.phoenix:
	docker build -t matteosister/phoenix:1.0 phoenix/1.0
	docker build -t matteosister/phoenix:1.1 phoenix/1.1
	docker build -t matteosister/phoenix:1.2 phoenix/1.2
	docker build -t matteosister/phoenix:1 phoenix/1.2
	docker build -t matteosister/phoenix:latest phoenix/1.2

build: build.erlang.base build.erlang build.elixir build.mix build.phoenix

push.erlang.base:
	docker push matteosister/erlang-build-deps

push.erlang:
	docker push matteosister/erlang

push.elixir:
	docker push matteosister/elixir

push.mix:
	docker push matteosister/mix

push.phoenix:
	docker push matteosister/phoenix

push: push.erlang.base push.erlang push.elixir push.mix push.phoenix
