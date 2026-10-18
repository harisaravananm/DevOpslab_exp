@echo off
REM Experiment 2: Maven Build Script for Windows
echo === Checking Prerequisites ===
java -version
mvn -version

echo.
echo === 1. Compiling Source Code ===
call mvn compile

echo.
echo === 2. Executing Unit Tests ===
call mvn test

echo.
echo === 3. Packaging into JAR ===
call mvn package

echo.
echo === 4. Clean and Package ===
call mvn clean package

echo.
echo === 5. Running the Application ===
java -jar target/maven-hello-1.0-SNAPSHOT.jar
pause
