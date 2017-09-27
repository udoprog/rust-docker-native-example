FROM ubuntu
MAINTAINER John-John Tedro <udoprog@tedro.se>

ENV PATH /sbin:/bin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/root/.cargo/bin

RUN apt-get update
RUN apt-get install --yes pkg-config libssl-dev gcc curl
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
