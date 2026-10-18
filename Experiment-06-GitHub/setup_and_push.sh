#!/bin/bash
# Experiment 6: Setup and Push Automation Shell Script
echo "=== Experiment 6: GitHub Repo Setup ==="
read -p "Enter your GitHub username: " USERNAME
read -p "Enter your Repository name (e.g. hello-world-devops): " REPONAME

echo -e "\n=== 1. Initializing Git ==="
git init
git add .
git commit -m "Add Hello World application"
git branch -M main

echo -e "\n=== 2. Adding Remote Origin ==="
git remote add origin "https://github.com/${USERNAME}/${REPONAME}.git"
git remote -v

echo -e "\n=== 3. Pushing to GitHub ==="
git push -u origin main

echo -e "\n=== Verification Complete ==="
