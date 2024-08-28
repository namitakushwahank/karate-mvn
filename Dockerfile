FROM maven:3.9.6-eclipse-temurin-17-alpine

WORKDIR /karate-mvn
COPY src ./src
COPY pom.xml .

RUN mvn clean test
# EXPOSE 4000

CMD ["mvn", "clean", "test", "-Dtest=testRunner"]
