FROM ubuntu
# ...
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -y install gcc mono-mcs && \
    apt-get -y install build-essential && \
    rm -rf /var/lib/apt/lists/*
