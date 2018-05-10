FROM gliderlabs/alpine
LABEL maintainer="Matt Outten <matt@outten.net>"

RUN apk --update add iperf

EXPOSE 5001
ENTRYPOINT ["/usr/bin/iperf"]
CMD ["-s"]
