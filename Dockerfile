FROM adoptopenjdk:11-jre-hotspot-focal
ADD target/tracker-server.jar tracker-server.jar
EXPOSE 8080
CMD ["-jar", "tracker-server.jar", "conf/traccar.xml"]
