#!/bin/bash
# Experiment 7: Gradle Build Script for Linux/macOS
set -e
echo "=== 1. Checking Gradle Version ==="
gradle -version

echo -e "\n=== 2. Cleaning Build Artifacts ==="
gradle clean

echo -e "\n=== 3. Building Application ==="
gradle build

echo -e "\n=== 4. Running Application ==="
gradle run

echo -e "\n=== 5. Generating JAR Package ==="
gradle jar

echo -e "\nGenerated JAR is located in build/libs/"
