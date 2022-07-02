FROM openjdk:8
ADD target/tracker-server.jar tracker-server.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","target/tracker-server.jar", "conf/traccar.xml"]
