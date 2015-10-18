FROM matteosister/elixir:latest

# base
RUN apt-get update && apt-get -qqy install git && rm -r /var/lib/apt/lists/*

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix hex.info

ENTRYPOINT ["mix"]
