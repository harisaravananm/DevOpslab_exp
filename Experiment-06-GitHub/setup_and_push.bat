@echo off
REM Experiment 6: Setup and Push Automation Batch Script
echo === Experiment 6: GitHub Repo Setup ===
set /p USERNAME="Enter your GitHub username: "
set /p REPONAME="Enter your Repository name (e.g. hello-world-devops): "

echo.
echo === 1. Initializing Git ===
git init
git add .
git commit -m "Add Hello World application"
git branch -M main

echo.
echo === 2. Adding Remote Origin ===
git remote add origin https://github.com/%USERNAME%/%REPONAME%.git
git remote -v

echo.
echo === 3. Pushing to GitHub ===
git push -u origin main

echo.
echo === Verification Complete ===
pause
