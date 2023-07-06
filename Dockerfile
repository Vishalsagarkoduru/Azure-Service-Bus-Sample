FROM vishalsagarkoduru/Azure-Service-Bus-Sample
ADD target/Azure-Service-bus.jar Azure-Service-bus.jar
EXPOSE 80
ENTRYPOINT ["java", "-jar", "Azure-Service-bus.jar"]
