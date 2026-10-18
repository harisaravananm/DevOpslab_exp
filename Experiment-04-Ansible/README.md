# Experiment 4: Creating and Executing an Ansible YAML Playbook to Automate Tasks

[![Ansible](https://img.shields.io/badge/IaC-Ansible-EE0000?logo=ansible&logoColor=white)](#)
[![YAML](https://img.shields.io/badge/Config-YAML-CB171E?logo=yaml&logoColor=white)](#)
[![IFET AI&ML](https://img.shields.io/badge/Department-AI%20%26%20ML-blue)](#)

---

## 📌 Experiment Details
- **Experiment No:** 04
- **Title:** Creating and executing an Ansible YAML playbook to automate tasks
- **Course Outcome:** **P405.1** - Automate configuration management and infrastructure provisioning.
- **Regulation:** IFETCE R-2023

---

## 🎯 Aim
To write a simple YAML file containing variables and tasks in Ansible, execute the playbook, and observe how Ansible automates system tasks and maintains idempotency.

---

## 🛠️ Software & System Requirements
- **Operating System:** Linux (Ubuntu 20.04/22.04 LTS), macOS, or Windows via WSL2 (Windows Subsystem for Linux)
- **Environment:** Python 3 (v3.8+)
- **Configuration Management:** Ansible (`ansible-core` 2.12+)
- **Text Editor:** VS Code, Vim, or Nano

---

## 🧠 Architectural Overview: Ansible Automation
Ansible is an **agentless** automation engine that communicates over SSH (or local connections) using declarative YAML playbooks:

```
+--------------------+
|   Control Node     |
|   (Ansible Engine) |
+--------------------+
          |
          | Inventory (hosts.ini)
          | Playbook (setup.yml)
          v
+------------------------------------+
|        Managed Host(s)             |
|  - localhost (connection: local)   |
|                                    |
|  Tasks Executed:                   |
|   1. Create directory /tmp/...     |
|   2. Copy message.txt file         |
|   3. Print debug message           |
+------------------------------------+
```

### Key Concept: Idempotency
An operation is **idempotent** if applying it multiple times produces the same result as applying it once:
- **First Execution:** System changes made (`changed=2, ok=3`).
- **Second Execution:** System already in desired state (`changed=0, ok=3`).

---

## 📝 Algorithm / Procedure

### 1. Install and Verify Ansible
1. In Linux/WSL2, install Ansible using the package manager or pip:
   ```bash
   sudo apt update
   sudo apt install -y ansible
   # OR: pip install ansible
   ```
2. Verify the installation:
   ```bash
   ansible --version
   ```

### 2. Create the Inventory File
1. Define the target managed nodes in `hosts.ini`:
   ```ini
   localhost ansible_connection=local
   ```
2. Validate inventory parsing:
   ```bash
   ansible-inventory -i hosts.ini --list
   ```

### 3. Create the YAML Playbook
1. Create `setup.yml` defining target hosts, variables, and automated tasks.
2. Structure tasks with builtin Ansible modules:
   - `ansible.builtin.file`: Ensures directory exists with correct permissions.
   - `ansible.builtin.copy`: Ensures file content exists at destination.
   - `ansible.builtin.debug`: Outputs messages to standard out.

### 4. Execute and Validate Idempotency
1. Perform a dry-run or syntax check:
   ```bash
   ansible-playbook -i hosts.ini setup.yml --syntax-check
   ```
2. Run the playbook:
   ```bash
   ansible-playbook -i hosts.ini setup.yml
   ```
3. Verify that the files were created on the filesystem:
   ```bash
   cat /tmp/devops_lab/message.txt
   ```
4. Re-run the playbook and confirm zero changes occurred (`changed=0`).

---

## 💻 Project Files

### 1. `hosts.ini` (Inventory)
```ini
localhost ansible_connection=local
```

### 2. `ansible.cfg` (Local Configuration)
```ini
[defaults]
inventory = hosts.ini
host_key_checking = False
deprecation_warnings = False
```

### 3. `setup.yml` (Playbook)
```yaml
---
- name: Simple Ansible Automation
  hosts: localhost
  connection: local
  gather_facts: false

  vars:
    project_dir: "/tmp/devops_lab"
    message: "Ansible automation completed"

  tasks:
    - name: Create project directory
      ansible.builtin.file:
        path: "{{ project_dir }}"
        state: directory
        mode: "0755"

    - name: Create message file
      ansible.builtin.copy:
        content: "{{ message }}\n"
        dest: "{{ project_dir }}/message.txt"
        mode: "0644"

    - name: Display completion message
      ansible.builtin.debug:
        msg: "{{ message }}"
```

---

## 📊 Expected Terminal Output

```text
$ ansible --version
ansible [core 2.x.x]
  config file = None
  configured module search path = ['/home/student/.ansible/plugins/modules']
  ansible python module location = /usr/lib/python3/dist-packages/ansible
  executable location = /usr/bin/ansible
  python version = 3.x.x

$ ansible-inventory -i hosts.ini --list
{
    "_meta": {
        "hostvars": {
            "localhost": {
                "ansible_connection": "local"
            }
        }
    },
    "all": {
        "children": [
            "ungrouped"
        ]
    }
}

$ ansible-playbook -i hosts.ini setup.yml

PLAY [Simple Ansible Automation] **************************************

TASK [Create project directory] ***************************************
changed: [localhost]

TASK [Create message file] ********************************************
changed: [localhost]

TASK [Display completion message] *************************************
ok: [localhost] => {
    "msg": "Ansible automation completed"
}

PLAY RECAP ************************************************************
localhost                  : ok=3    changed=2    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0

$ cat /tmp/devops_lab/message.txt
Ansible automation completed

$ ansible-playbook -i hosts.ini setup.yml

PLAY [Simple Ansible Automation] **************************************

TASK [Create project directory] ***************************************
ok: [localhost]

TASK [Create message file] ********************************************
ok: [localhost]

TASK [Display completion message] *************************************
ok: [localhost] => {
    "msg": "Ansible automation completed"
}

PLAY RECAP ************************************************************
localhost                  : ok=3    changed=0    unreachable=0    failed=0    skipped=0
```

---

## 🧪 Simulation for Windows (Without WSL)
If you are running on native Windows without WSL/Ansible installed, run the included Python test simulator:
```bash
python simulate_ansible.py
```
This faithfully validates YAML parsing, simulates task execution, demonstrates file system state transitions, and validates idempotency!

---

## 🎯 Program Outcomes (PO) & Program Specific Outcomes (PSO) Attained
| PO1 | PO2 | PO3 | PO4 | PO5 | PO6 | PO7 | PO8 | PO9 | PO10 | PO11 | PO12 | PSO1 | PSO2 | PSO3 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:----:|:----:|:----:|:----:|:----:|:----:|
|  3  |  3  |  3  |  3  |  3  |  2  |  2  |  2  |  3  |  3   |  3   |  3   |  3   |  2   |  3   |

---

## 🏆 Result
Thus, the YAML playbook was created and executed successfully. The defined variables and tasks were processed by Ansible, and the automated changes were verified on the target system with idempotency demonstrated.
