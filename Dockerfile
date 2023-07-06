FROM openjdk:17-jdk-slim-buster
ADD target/Azure-Service-bus-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 80
ENTRYPOINT ["java", "-jar", "/app.jar"]
