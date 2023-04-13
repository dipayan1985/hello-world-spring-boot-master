#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /hello-world-spring-boot-master/src
COPY pom.xml /hello-world-spring-boot-master
RUN mvn -f /hello-world-spring-boot-master/pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build //hello-world-spring-boot-master/target/hello-world-spring-boot-master-0.0.1-SNAPSHOT.jar /usr/local/lib/demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]
