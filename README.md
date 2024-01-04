# JMeter (Dockerized)

## Description

This repository contains a Dockerized version of Apache JMeter, a powerful open-source tool for load testing and performance measurement. The Docker image provides a convenient way to run JMeter in various environments without the need for extensive setup.

## Prerequisites

Before using this Docker image, ensure you have the following installed:

- Docker ([Installation Guide](https://docs.docker.com/get-docker/))

## Usage

### Build the docker image

```bash
make build
```

### Pull the Docker Image

To pull the JMeter Docker image from Docker Hub, use the following command:

```bash
docker pull localgod/jmeter
```

### Run

### Console

```bash
docker run --rm -it -v $(pwd):/tmp -w /tmp localgod/jmeter -h
```

### Editor

```bash
docker run --net=host --env="DISPLAY" -v "${HOME}/.Xauthority:/root/.Xauthority" --rm -it -v $(pwd):/tmp -w /tmp localgod/jmeter
```
