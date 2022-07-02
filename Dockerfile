FROM alpine:3.15

WORKDIR /target

RUN set -ex && \
    apk add --no-cache --no-progress openjdk11-jre-headless wget && \
    apk del wget

ENTRYPOINT ["java", "-Xms512m", "-Xmx512m", "-Djava.net.preferIPv4Stack=true"]

CMD ["-jar", "tracker-server.jar", "conf/traccar.xml"]
