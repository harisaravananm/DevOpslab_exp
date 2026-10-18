#!/bin/bash
# Experiment 3: Docker Commands Demo Shell Script
set -e
echo "=== Step 1: Checking Docker Version ==="
docker --version
docker info

echo -e "\n=== Step 2: Pulling Hello-World Image ==="
docker pull hello-world
docker images

echo -e "\n=== Step 3: Running Hello-World Container ==="
docker run hello-world

echo -e "\n=== Step 4: Listing Containers ==="
docker ps -a

echo -e "\n=== Docker Commands Demo Complete ==="
