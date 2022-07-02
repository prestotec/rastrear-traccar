FROM openjdk:11
ADD target/tracker-server.jar tracker-server.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","tracker-server.jar", "conf/traccar.xml"]
