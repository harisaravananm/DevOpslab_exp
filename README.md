# 🚀 DevOps Laboratory Experiments 

<div align="center">

![DevOps Lab Banner](https://img.shields.io/badge/IFET%20COLLEGE%20OF%20ENGINEERING-Autonomous%20Institution-003366?style=for-the-badge)
![Department](https://img.shields.io/badge/DEPARTMENT-AI%20%26%20ML-FF6F00?style=for-the-badge)
![Academic Year](https://img.shields.io/badge/ACADEMIC%20YEAR-2026--2027-007A33?style=for-the-badge)
![Regulation](https://img.shields.io/badge/REGULATION-IFETCE%20R--2023-7B1FA2?style=for-the-badge)

<br/>

[![Git](https://img.shields.io/badge/Git-F05032?style=flat-square&logo=git&logoColor=white)](https://git-scm.com/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white)](https://github.com/)
[![Apache Maven](https://img.shields.io/badge/Apache%20Maven-C71A36?style=flat-square&logo=apachemaven&logoColor=white)](https://maven.apache.org/)
[![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)](https://www.docker.com/)
[![Ansible](https://img.shields.io/badge/Ansible-EE0000?style=flat-square&logo=ansible&logoColor=white)](https://www.ansible.com/)
[![Jenkins](https://img.shields.io/badge/Jenkins-D24939?style=flat-square&logo=jenkins&logoColor=white)](https://www.jenkins.io/)
[![Gradle](https://img.shields.io/badge/Gradle-02303A?style=flat-square&logo=gradle&logoColor=white)](https://gradle.org/)
[![Java](https://img.shields.io/badge/Java%2017-ED8B00?style=flat-square&logo=openjdk&logoColor=white)](https://openjdk.org/)
[![Status](https://img.shields.io/badge/Lab%20Status-Complete%20%26%20Verified-success?style=flat-square)](#)

<p align="center">
  <b>Comprehensive repository containing source code, configurations, automation scripts, and detailed execution guides for all 7 DevOps laboratory experiments.</b>
</p>

</div>

---

## 📖 Course Overview
- **Course Title:** DevOps Laboratory / DevOps Tools & Techniques (DTT)
- **Course Outcome:** **P405.1** - Apply modern DevOps practices including Distributed Version Control, Automated Build Systems, Containerization, Configuration Management, and Continuous Integration & Deployment (CI/CD) pipelines.
- **Repository Maintainer:** **Hari Saravanan M** ([@harisaravananm](https://github.com/harisaravananm))

---

## 📑 Index of Experiments

| Ex. No | Experiment Title | Primary Tools | Directory Link | Status |
|:---:|:---|:---:|:---:|:---:|
| **01** | **Git Version Control & Branch Management**<br>_Initializing, cloning, staging, committing, pushing, and branching._ | `Git`, `CLI` | [📂 Experiment-01-Git](./Experiment-01-Git) | ✅ Completed |
| **02** | **Apache Maven & Java Project Setup**<br>_Installing Maven, standard project hierarchy, `pom.xml`, compile, test, package._ | `Maven`, `Java 17`, `JUnit` | [📂 Experiment-02-Maven](./Experiment-02-Maven) | ✅ Completed |
| **03** | **Docker Container Installation & Management**<br>_Pulling images, running containers, interactive shells, resource management._ | `Docker`, `Docker Desktop`, `Alpine` | [📂 Experiment-03-Docker](./Experiment-03-Docker) | ✅ Completed |
| **04** | **Ansible YAML Playbook Automation**<br>_Inventory creation, declarative playbooks, tasks, variables, and idempotency._ | `Ansible`, `YAML`, `Python` | [📂 Experiment-04-Ansible](./Experiment-04-Ansible) | ✅ Completed |
| **05** | **Jenkins CI/CD Pipeline (Maven + Docker)**<br>_Declarative pipeline with Checkout, Maven Build, and Docker Image creation._ | `Jenkins`, `Maven`, `Docker` | [📂 Experiment-05-Jenkins](./Experiment-05-Jenkins) | ✅ Completed |
| **06** | **GitHub Account, Repository Creation & App Push**<br>_Remote hosting, Personal Access Tokens, local-to-remote tracking, verification._ | `GitHub`, `Git`, `Java` | [📂 Experiment-06-GitHub](./Experiment-06-GitHub) | ✅ Completed |
| **07** | **Building Application Using Gradle**<br>_Gradle DSL, application plugin, tasks execution, dependency management, JAR build._ | `Gradle`, `Groovy DSL`, `Java` | [📂 Experiment-07-Gradle](./Experiment-07-Gradle) | ✅ Completed |

---

## 📁 Repository Directory Structure

```text
DevOpslab_exp/
├── docs/                                   # Official College Manuals & Expected Outputs
│   ├── DTT lab manual 2026-27 final rec.pdf
│   ├── DTT lab manual 2026-27.docx
│   └── DevOps_2026_27_Experiment_Outputs.docx
│
├── Experiment-01-Git/                      # Ex 1: Git Version Control
│   ├── README.md                           # Comprehensive guide & verified outputs
│   ├── git_demo.sh                         # Linux/Git Bash automation script
│   ├── git_demo.bat                        # Windows CMD automation script
│   └── sample-project/                     # Demo project with sample code & .gitignore
│
├── Experiment-02-Maven/                    # Ex 2: Apache Maven
│   ├── README.md                           # Step-by-step procedure & output logs
│   ├── pom.xml                             # Configured Maven POM with plugins & dependencies
│   ├── build.bat / build.sh                # 1-Click build & test runner scripts
│   └── src/                                # Application code (main) & unit tests (test)
│
├── Experiment-03-Docker/                   # Ex 3: Docker Containers
│   ├── README.md                           # Docker architecture & command reference
│   ├── Dockerfile                          # Production-ready containerfile
│   ├── docker-compose.yml                  # Declarative orchestration file
│   ├── docker_commands.bat / .sh           # Reference execution scripts
│   └── app/index.html                      # Sample web application served by container
│
├── Experiment-04-Ansible/                  # Ex 4: Ansible Automation
│   ├── README.md                           # Playbook guide, modules & idempotency demo
│   ├── hosts.ini / ansible.cfg             # Inventory and Ansible runtime settings
│   ├── setup.yml                           # Standard Ansible playbook from lab manual
│   ├── setup_windows.yml                   # Windows-adapted playbook
│   └── simulate_ansible.py                 # Standalone Python runner simulating execution
│
├── Experiment-05-Jenkins/                  # Ex 5: Jenkins CI/CD Pipeline
│   ├── README.md                           # Pipeline architecture & Jenkins UI guide
│   ├── Jenkinsfile                         # Declarative CI/CD pipeline script
│   ├── pom.xml / Dockerfile                # Build descriptors for pipeline stages
│   ├── docker-compose-jenkins.yml          # Ready-to-run containerized Jenkins server
│   └── src/main/java/.../DevOpsApp.java    # Source code tested in pipeline
│
├── Experiment-06-GitHub/                   # Ex 6: GitHub Cloud Push
│   ├── README.md                           # Account, PAT auth, and remote push guide
│   ├── HelloWorld.java                     # Application code from lab syllabus
│   └── setup_and_push.bat / .sh            # Interactive automated Git push helpers
│
└── Experiment-07-Gradle/                   # Ex 7: Gradle Build System
    ├── README.md                           # Gradle DSL reference & tasks guide
    ├── build.gradle / settings.gradle      # Build script with application plugin
    ├── build.bat / build.sh                # Build and execution helper scripts
    └── src/                                # Java source and unit test suites
```

---

## 💻 Prerequisites & Environment Setup

### 1. Git Installation
- **Windows:** Download and install from [git-scm.com](https://git-scm.com/download/win).
- **Linux:**
  ```bash
  sudo apt update && sudo apt install -y git
  ```
- **Configuration:**
  ```bash
  git config --global user.name "Your Name"
  git config --global user.email "you@example.com"
  ```

### 2. Java Development Kit (JDK 17)
- **Windows:** Download Temurin OpenJDK 17 or Oracle JDK 17 and configure `JAVA_HOME`.
- **Linux:**
  ```bash
  sudo apt install -y openjdk-17-jdk
  export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
  ```

### 3. Apache Maven
- Download binary ZIP from [maven.apache.org](https://maven.apache.org/download.cgi), extract, and add the `bin` directory to `PATH`.
- Verify: `mvn -version`.

### 4. Gradle
- Download binary ZIP from [gradle.org/releases](https://gradle.org/releases/), extract, and add `bin` to `PATH`.
- Verify: `gradle -version`.

### 5. Docker Desktop / Engine
- **Windows:** Install Docker Desktop with WSL2 backend.
- **Linux:** Install via `get-docker.sh` and enable the service:
  ```bash
  curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh
  sudo usermod -aG docker $USER
  ```

### 6. Ansible
- Install on Linux or Windows WSL2:
  ```bash
  sudo apt install -y ansible
  # OR via pip:
  pip install ansible
  ```

### 7. Jenkins
- Run natively or with Docker:
  ```bash
  docker run -d -p 8080:8080 -p 50000:50000 --name jenkins jenkins/jenkins:lts-jdk17
  ```

---

## 🎯 Program Outcomes (PO) & Program Specific Outcomes (PSO) Mapping

On completion of this laboratory curriculum, the following outcomes are attained:

| Course Outcome | PO1 | PO2 | PO3 | PO4 | PO5 | PO6 | PO7 | PO8 | PO9 | PO10 | PO11 | PO12 | PSO1 | PSO2 | PSO3 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:----:|:----:|:----:|:----:|:----:|:----:|
| **P405.1** | **3** | **3** | **3** | **3** | **3** | **2** | **2** | **2** | **3** | **3** | **3** | **3** | **3** | **2** | **3** |

*Key:* `3` = Substantial (High) Mapping, `2` = Moderate (Medium) Mapping, `1` = Slight (Low) Mapping.

---

## 🚀 How to Clone and Use This Repository

```bash
# 1. Clone the repository
git clone https://github.com/harisaravananm/DevOpslab_exp.git

# 2. Navigate into the repository
cd DevOpslab_exp

# 3. Explore any experiment folder
cd Experiment-02-Maven
mvn clean package
```

---


