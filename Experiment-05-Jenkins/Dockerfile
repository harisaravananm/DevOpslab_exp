# Multi-stage lightweight runtime for Jenkins pipeline
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Copy the compiled JAR created during the Maven Build stage
COPY target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
