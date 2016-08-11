# docker: iperf:3.1

[![](https://images.microbadger.com/badges/image/moutten/iperf.svg)](https://microbadger.com/images/moutten/iperf "Get your own image badge on microbadger.com")

This is a docker image to run the [iperf commandline tool](https://iperf.fr/)
for benchmarking network performance.

### Build from docker file

If you want to build the docker container image yourself you can do so with the
following commands:

```bash
git clone git@github.com:moutten/docker-iperf.git
cd docker-iperf
docker build -t iperf3.1 .
```

### Pulling from docker hub

If you just want to obtain the image from the docker registry, you can use the
following command:

```bash
docker pull moutten/iperf:3.1
```

### Running the image

In order to run the iperf server command in daemonized mode, use the following:

```bash
docker run -d -p 5201:5201 moutten/iperf:3.1
```

At that point, you can use your docker server as an iperf server to begin
benchmarking your network speeds.
