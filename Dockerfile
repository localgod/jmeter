FROM alpine:3.20 AS build

ARG jmeter_version=5.6.2

RUN wget -nv https://dlcdn.apache.org//jmeter/binaries/apache-jmeter-${jmeter_version}.tgz \
&& tar zxvf apache-jmeter-${jmeter_version}.tgz \
&& rm -rf apache-jmeter-${jmeter_version}/licenses apache-jmeter-${jmeter_version}/docs apache-jmeter-${jmeter_version}/printable_docs \
&& mv apache-jmeter-${jmeter_version} apache-jmeter

FROM alpine:3.20

ARG BUILD_DATE=""
ARG VCS_REF=""
ARG VERSION=""

LABEL maintainer="https://github.com/localgod/jmeter" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.vendor="Localgod" \
      org.label-schema.name="jmeter" \
      org.label-schema.license="MIT" \
      org.label-schema.description="This is a dockerized version of the Jmeter tool. Nothing more nothing less." \
      org.label-schema.vcs-url="https://github.com/localgod/jmeter" \
      org.label-schema.vcs-ref=${VCS_REF} \
      org.label-schema.build-date=${BUILD_DATE} \
      org.label-schema.version=${VERSION} \
      org.label-schema.url="https://github.com/localgod/jmeter" \
      org.label-schema.usage="https://github.com/localgod/jmeter/blob/master/README.md"

ARG openjdk8_version=8.392.08-r1

RUN apk --update --no-cache add openjdk8=${openjdk8_version}

COPY --from=build /apache-jmeter /apache-jmeter
COPY entrypoint.sh /entrypoint.sh
RUN ln -s /apache-jmeter/bin/jmeter /usr/bin/jmeter

ENTRYPOINT ["/entrypoint.sh"]
