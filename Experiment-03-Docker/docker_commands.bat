@echo off
REM Experiment 3: Docker Commands Demo Batch Script
echo === Step 1: Checking Docker Version ===
docker --version
docker info

echo.
echo === Step 2: Pulling Hello-World Image ===
docker pull hello-world
docker images

echo.
echo === Step 3: Running Hello-World Container ===
docker run hello-world

echo.
echo === Step 4: Listing Containers ===
docker ps -a

echo.
echo === Docker Commands Demo Complete ===
pause
