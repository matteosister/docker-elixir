FROM debian:wheezy

MAINTAINER Matteo Giachino <matteog@gmail.com>

ENV OTP_VERSION=17.5.6.3
ENV ERLANG_OTP_TAR=https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz

# Dependencies
RUN apt-get update && apt-get install -qqy wget autoconf build-essential libncurses5-dev && rm -rf /var/lib/apt/lists/*

# Build erlang
RUN mkdir /tmp/otp\
    && cd /tmp/otp\
    && wget --quiet --no-check-certificate --output-document=otp.tar.gz $ERLANG_OTP_TAR\
    && tar -zxf otp.tar.gz\
    && rm -rf otp.tar.gz\
    && cd /tmp/otp/otp-OTP-${OTP_VERSION}\
    && export ERL_TOP=`pwd`\
    && ./otp_build autoconf\
    && ./configure\
    && make\
    && make install\
    && rm -rf /tmp/otp
