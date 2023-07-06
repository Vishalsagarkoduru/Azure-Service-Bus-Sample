FROM openjdk:17-jdk-slim-buster
ADD target/*.jar
EXPOSE 80
ENTRYPOINT ["java", "-jar", "*.jar"]
