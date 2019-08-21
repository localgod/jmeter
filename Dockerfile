FROM alpine:latest

LABEL MAINTAINER="https://github.com/localgod/jmeter"

RUN apk add openjdk8 --update && rm -rf /var/cache/apk/* && ln -s "/usr/lib/jvm/java-1.8-openjdk/bin/javac" /usr/bin/javac

ADD http://ftp.download-by.net/apache/jmeter/binaries/apache-jmeter-5.1.1.tgz /apache-jmeter-5.1.1.tgz

RUN tar zxvf apache-jmeter-5.1.1.tgz \
&& rm -rf apache-jmeter-5.1.1/licenses apache-jmeter-5.1.1/docs apache-jmeter-5.1.1/printable_docs \
&& ln -s /apache-jmeter-5.1.1/bin/jmeter /usr/bin/jmeter \
&& rm apache-jmeter-5.1.1.tgz

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
