ORG=localgod
APP=jmeter
VERSION=latest
IMAGE=${ORG}/${APP}:${VERSION}

.PHONY: build run

build:
	@docker build \
	--build-arg BUILD_DATE=$(shell date -u +'%Y-%m-%dT%H:%M:%SZ') \
	--build-arg VCS_REF=$(shell git rev-parse HEAD) \
	--build-arg VERSION=$(shell cat VERSION) \
	-t ${IMAGE} .

run:
	@docker run --rm -it -v ${PWD}:/tmp -w /tmp ${IMAGE}
