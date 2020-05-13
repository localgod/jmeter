[![](https://images.microbadger.com/badges/image/localgod/jmeter.svg)](https://microbadger.com/images/localgod/jmeter "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/localgod/jmeter.svg)](https://microbadger.com/images/localgod/jmeter "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/commit/localgod/jmeter.svg)](https://microbadger.com/images/localgod/jmeter "Get your own commit badge on microbadger.com")
[![](https://images.microbadger.com/badges/license/localgod/jmeter.svg)](https://microbadger.com/images/localgod/jmeter "Get your own license badge on microbadger.com")

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
