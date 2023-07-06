FROM vishalsagarkoduru/azure-service-bus-sample
ADD target/Azure-Service-bus.jar Azure-Service-bus.jar
EXPOSE 80
ENTRYPOINT ["java", "-jar", "Azure-Service-bus.jar"]
