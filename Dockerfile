FROM debian:latest
MAINTAINER Matt Outten <matt@outten.net>

ADD https://iperf.fr/download/iperf_3.1/libiperf0_3.1.2-1_amd64.deb /libiperf0_3.1.2-1_amd64.deb
ADD https://iperf.fr/download/iperf_3.1/iperf3_3.1.2-1_amd64.deb /iperf3_3.1.2-1_amd64.deb
RUN dpkg -i /libiperf0_3.1.2-1_amd64.deb /iperf3_3.1.2-1_amd64.deb && \
    rm /libiperf0_3.1.2-1_amd64.deb /iperf3_3.1.2-1_amd64.deb

EXPOSE 5201
ENTRYPOINT ["/usr/bin/iperf3"]
CMD ["-s"]
