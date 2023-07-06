#
# Build stage
#

FROM maven:3.8.1-openjdk-17-slim AS build

WORKDIR usr/src/app

COPY . ./

RUN mvn clean install

#
# Package stage
#

FROM openjdk:17.0.1-jdk-slim

ARG JAR_NAME="Azure-Service-bus"

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/target/${JAR_NAME}.jar ./app.jar

CMD ["java","-jar", "./app.jar"]
