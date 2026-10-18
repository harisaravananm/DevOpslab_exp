#!/bin/bash
# Experiment 2: Maven Build Script for Linux/macOS
set -e
echo "=== Checking Prerequisites ==="
java -version
mvn -version

echo -e "\n=== 1. Compiling Source Code ==="
mvn compile

echo -e "\n=== 2. Executing Unit Tests ==="
mvn test

echo -e "\n=== 3. Packaging into JAR ==="
mvn package

echo -e "\n=== 4. Clean and Package ==="
mvn clean package

echo -e "\n=== 5. Running Application ==="
java -jar target/maven-hello-1.0-SNAPSHOT.jar
