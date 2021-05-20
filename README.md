# JMeter (dockerized)

## Description
This is a dockerized version of the [JMeter](https://jmeter.apache.org/) tool. Nothing more nothing less.

## Build
```bash
make build
```

## Run

### Console

```bash
docker run --rm -it -v $(pwd):/tmp -w /tmp localgod/jmeter -h
```

### Editor

```bash
docker run --net=host --env="DISPLAY" -v "${HOME}/.Xauthority:/root/.Xauthority" --rm -it -v $(pwd):/tmp -w /tmp localgod/jmeter
```
