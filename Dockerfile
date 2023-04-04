FROM eclipse-temurin:17-jdk-alpine
MAINTAINER baeldung.com
COPY target/myproject-0.0.1-SNAPSHOT.jar myproject-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/message-server-1.0.0.jar"]


