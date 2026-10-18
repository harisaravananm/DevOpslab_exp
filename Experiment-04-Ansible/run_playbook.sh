#!/bin/bash
# Experiment 4: Ansible Execution Script
set -e
echo "=== Step 1: Checking Ansible Version ==="
ansible --version

echo -e "\n=== Step 2: Listing Inventory ==="
ansible-inventory -i hosts.ini --list

echo -e "\n=== Step 3: Executing Playbook (First Run) ==="
ansible-playbook -i hosts.ini setup.yml

echo -e "\n=== Step 4: Verifying Created Content ==="
cat /tmp/devops_lab/message.txt

echo -e "\n=== Step 5: Testing Idempotency (Second Run) ==="
ansible-playbook -i hosts.ini setup.yml
