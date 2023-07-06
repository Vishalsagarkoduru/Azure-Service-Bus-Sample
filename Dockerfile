FROM openjdk:17-jdk-slim-buster
WORKDIR /app

COPY app/build/lib/* build/lib/

COPY app/build/libs/Azure-Service-bus.jar build/

WORKDIR /app/build
ENTRYPOINT java -jar Azure-Service-bus.jar.
