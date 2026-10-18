@echo off
REM Experiment 7: Gradle Build Script for Windows
echo === 1. Checking Gradle Version ===
gradle -version

echo.
echo === 2. Cleaning Build Artifacts ===
call gradle clean

echo.
echo === 3. Building Application ===
call gradle build

echo.
echo === 4. Running Application ===
call gradle run

echo.
echo === 5. Generating JAR Package ===
call gradle jar

echo.
echo Generated JAR is available in build\libs\
pause
