FROM alpine:3.4
MAINTAINER Matt Outten <matt@outten.net>

ENV LD_LIBRARY_PATH=/usr/lib

ADD https://iperf.fr/download/ubuntu/libiperf.so.0_3.1.3 /usr/lib/libiperf.so.0
ADD https://iperf.fr/download/ubuntu/iperf3_3.1.3 /usr/bin/iperf3
ADD https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub /etc/apk/keys/sgerrand.rsa.pub
ADD https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk /glibc-2.apk

RUN chmod +x /usr/bin/iperf3 && \
    apk add /glibc-2.apk && \
    rm /*.apk

EXPOSE 5201
ENTRYPOINT ["/usr/bin/iperf3"]
CMD ["-s"]
