# docker: iperf

## Supported tags and respective Dockerfile links

* 2.0 [(2.0/Dockerfile)](https://github.com/moutten/docker-iperf/blob/master/2.0/Dockerfile) [![](https://images.microbadger.com/badges/image/moutten/iperf:2.0.svg)](https://microbadger.com/images/moutten/iperf:2.0 "Get your own image badge on microbadger.com")
* 3.0 [(3.0/Dockerfile)](https://github.com/moutten/docker-iperf/blob/master/3.0/Dockerfile) [![](https://images.microbadger.com/badges/image/moutten/iperf:3.0.svg)](https://microbadger.com/images/moutten/iperf:3.0 "Get your own image badge on microbadger.com") 
* 3.1, latest [(3.1/Dockerfile)](https://github.com/moutten/docker-iperf/blob/master/3.1/Dockerfile) [![](https://images.microbadger.com/badges/image/moutten/iperf:3.1.svg)](https://microbadger.com/images/moutten/iperf:3.1 "Get your own image badge on microbadger.com")

This is a docker image to run the [iperf commandline tool](https://iperf.fr/)
for benchmarking network performance.

### Build from docker file

If you want to build the docker container image yourself you can do so with the
following commands:

```bash
$ git clone git@github.com:moutten/docker-iperf.git
$ cd docker-iperf/3.1
$ docker build -t iperf .
```

### Pulling from docker hub

If you just want to obtain the image from the docker registry, you can use the
following command:

```bash
$ docker pull moutten/iperf
```

### Running the image

In order to run the iperf server command in daemonized mode, use the following:

```bash
$ docker run -d -p 5201:5201 moutten/iperf
```

At that point, you can use your docker server as an iperf server to begin
benchmarking your network speeds.
