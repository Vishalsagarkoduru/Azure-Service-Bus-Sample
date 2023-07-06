#
# Build stage
#

FROM maven:3.9.3-jdk-17-slim AS build

WORKDIR usr/src/app

COPY . ./

RUN mvn clean package

#
# Package stage
#

FROM openjdk:17-jre-slim

ARG JAR_NAME="Azure-Service-bus"

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/target/${JAR_NAME}.jar ./app.jar

CMD ["java","-jar", "./app.jar"]
