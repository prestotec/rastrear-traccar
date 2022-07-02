FROM adoptopenjdk:11-jre-hotspot-focal

ADD target/tracker-server.jar tracker-server.jar

ENTRYPOINT ["java", "-Xms512m", "-Xmx512m", "-Djava.net.preferIPv4Stack=true"]

EXPOSE 8080

CMD ["-jar", "tracker-server.jar", "conf/traccar.xml"]
