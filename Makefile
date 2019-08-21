ORG=localgod
APP=jmeter
VERSION=latest
IMAGE=${ORG}/${APP}:${VERSION}

.PHONY: build run

build:
	@docker build -t ${IMAGE} .

run:
	@docker run --rm -it -v ${PWD}:/tmp -w /tmp ${IMAGE}
