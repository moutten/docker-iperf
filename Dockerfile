FROM ubuntu:14.04
MAINTAINER Matt Outten <matt@outten.net>

RUN apt-get update && \
    apt-get -y install iperf

EXPOSE 5001
CMD ["/usr/bin/iperf","-s"]
