@echo off
REM Experiment 1: Git Demonstration Batch Script for Windows
echo === Step 1: Checking Git Version ===
git --version

echo.
echo === Step 2: Creating Local Repository ===
if not exist devops-git-demo mkdir devops-git-demo
cd devops-git-demo
git init

echo.
echo === Step 3: Creating and Staging File ===
echo # DevOps Git Lab Demonstration > README.md
git status
git add README.md

echo.
echo === Step 4: Committing Changes ===
git commit -m "Initial commit for DevOps lab"
git log --oneline

echo.
echo === Step 5: Creating Feature Branch ===
git switch -c feature-demo
git branch
git status

echo.
echo === Experiment 1 Demo Complete ===
pause
