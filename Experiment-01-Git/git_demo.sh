#!/bin/bash
# Experiment 1: Git Demonstration Script
echo "=== Step 1: Checking Git Version ==="
git --version

echo -e "\n=== Step 2: Creating Local Repository ==="
mkdir -p devops-git-demo
cd devops-git-demo
git init

echo -e "\n=== Step 3: Creating and Staging File ==="
echo "# DevOps Git Lab Demonstration" > README.md
git status
git add README.md

echo -e "\n=== Step 4: Committing Changes ==="
git commit -m "Initial commit for DevOps lab"
git log --oneline

echo -e "\n=== Step 5: Creating Feature Branch ==="
git switch -c feature-demo
git branch
git status

echo -e "\n=== Experiment 1 Demo Complete ==="
