FROM gliderlabs/alpine:edge
MAINTAINER Matt Outten <matt@outten.net>

RUN apk --update add iperf3

EXPOSE 5201
ENTRYPOINT ["/usr/bin/iperf3"]
CMD ["-s"]
