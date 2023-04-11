FROM eclipse-temurin:17-jdk-alpine
COPY target/hello-world-spring-boot-master-0.0.1-SNAPSHOT.jar hello-world-spring-boot-master-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/hello-world-spring-boot-master-0.0.1-SNAPSHOT.jar"]
