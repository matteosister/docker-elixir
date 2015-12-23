FROM debian:wheezy

MAINTAINER Matteo Giachino <matteog@gmail.com>

# Dependencies
RUN apt-get update && apt-get install -qqy\
  wget build-essential autoconf libncurses5-dev openssl libssl-dev fop\
  xsltproc unixodbc-dev locales\
  && rm -rf /var/lib/apt/lists/*

# UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && locale-gen
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
