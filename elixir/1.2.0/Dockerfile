FROM erlang:18

MAINTAINER Matteo Giachino <matteog@gmail.com>

ENV ELIXIR_VERSION=1.2.0
ENV ELIXIR_TAR=https://github.com/elixir-lang/elixir/archive/v${ELIXIR_VERSION}.tar.gz

# Dependencies
RUN apt-get update && apt-get install --force-yes -qqy locales\
  && rm -rf /var/lib/apt/lists/*

# UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && locale-gen
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

# Build elixir
RUN mkdir /tmp/elixir\
    && cd /tmp/elixir\
    && wget --quiet --no-check-certificate --output-document=elixir.tar.gz $ELIXIR_TAR\
    && tar -zxf elixir.tar.gz\
    && rm -rf elixir.tar.gz\
    && cd /tmp/elixir/elixir-${ELIXIR_VERSION}\
    && make clean install\
    && rm -rf /tmp/elixir
