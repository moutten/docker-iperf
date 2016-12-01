FROM debian:latest
MAINTAINER Matt Outten <matt@outten.net>

ADD https://iperf.fr/download/ubuntu/iperf3_3.1.3-1_amd64.deb /iperf.deb
ADD https://iperf.fr/download/ubuntu/libiperf0_3.1.3-1_amd64.deb /libiperf.deb
RUN dpkg -i /libiperf.deb /iperf.deb && \
    rm /*.deb

EXPOSE 5201
ENTRYPOINT ["/usr/bin/iperf3"]
CMD ["-s"]
