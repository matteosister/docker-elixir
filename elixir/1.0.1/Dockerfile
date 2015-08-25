FROM matteosister/erlang:17.4

MAINTAINER Matteo Giachino <matteog@gmail.com>

ENV ELIXIR_VERSION=1.0.1
ENV ELIXIR_TAR=https://github.com/elixir-lang/elixir/archive/v${ELIXIR_VERSION}.tar.gz

# Build elixir
RUN mkdir /tmp/elixir\
    && cd /tmp/elixir\
    && wget --quiet --no-check-certificate --output-document=elixir.tar.gz $ELIXIR_TAR\
    && tar -zxf elixir.tar.gz\
    && rm -rf elixir.tar.gz\
    && cd /tmp/elixir/elixir-${ELIXIR_VERSION}\
    && make clean install\
    && rm -rf /tmp/elixir
