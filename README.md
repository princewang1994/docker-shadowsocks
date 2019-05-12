# docker-shadowsocks

This Dockerfile builds an image with the Python implementation of [shadowsocks](https://github.com/shadowsocks/shadowsocks). Based on Ubuntu 16.04 image.

## Quick Start
-----------

### Build Image

```shell
$ docker build . -t prince/shadowsocks:latest
```

### Run server

```shell
$ ./scripts/run-server.sh
```

### Run local

```shell
$ ./scripts/run-local.sh
```

### Or use docker-compose

```shell
$ docker-compose up -d
```
