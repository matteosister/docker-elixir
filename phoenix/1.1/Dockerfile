FROM matteosister/elixir:1.1
MAINTAINER Matteo Giachino <matteog@gmail.com>

# base
RUN apt-get update && apt-get -qqy install git inotify-tools curl && rm -r /var/lib/apt/lists/*

# node 4.x
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get update && apt-get -qqy install nodejs && rm -r /var/lib/apt/lists/*

# app
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix hex.info
RUN npm install -g brunch

CMD ["./startup.sh"]
