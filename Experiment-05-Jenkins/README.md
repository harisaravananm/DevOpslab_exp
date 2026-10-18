# Experiment 5: Setting Up Docker and Maven in Jenkins and Performing the First Pipeline Run

[![Jenkins](https://img.shields.io/badge/CI%2FCD-Jenkins-D24939?logo=jenkins&logoColor=white)](#)
[![Docker](https://img.shields.io/badge/Container-Docker-2496ED?logo=docker&logoColor=white)](#)
[![Maven](https://img.shields.io/badge/Build-Maven-C71A36?logo=apachemaven&logoColor=white)](#)
[![IFET AI&ML](https://img.shields.io/badge/Department-AI%20%26%20ML-blue)](#)

---

## 📌 Experiment Details
- **Experiment No:** 05
- **Title:** Setting up Docker and Maven in Jenkins and performing the first Pipeline Run
- **Course Outcome:** **P405.1** - Design and implement automated Continuous Integration and Continuous Deployment (CI/CD) pipelines.
- **Regulation:** IFETCE R-2023

---

## 🎯 Aim
To configure Maven and Docker for Jenkins and create and execute a basic Jenkins Pipeline that checks out source code, builds a Maven project, and builds a Docker image.

---

## 🛠️ Software & System Requirements
- **CI/CD Server:** Jenkins (v2.300+ LTS)
- **JDK:** Java 11 or 17 LTS
- **Build Tool:** Apache Maven (Configured in Jenkins Global Tools as `Maven3`)
- **Container Engine:** Docker Engine / Docker Desktop
- **Version Control:** Git

---

## 🧠 Architectural Overview: CI/CD Pipeline
The Jenkins Declarative Pipeline automates the build-test-package-containerize cycle:

```
+---------------------------------------------------------------------------------------+
|                               Jenkins Declarative Pipeline                            |
|                                                                                       |
|   +-------------------+       +--------------------+       +----------------------+   |
|   |  Stage 1:         |  ==>  |  Stage 2:          |  ==>  |  Stage 3:            |   |
|   |  Checkout         |       |  Maven Build       |       |  Docker Build        |   |
|   |  (Git SCM)        |       |  (mvn package)     |       |  (docker build)      |   |
|   +-------------------+       +--------------------+       +----------------------+   |
|             |                           |                             |               |
|             v                           v                             v               |
|      GitHub Remote Repo            JAR Artifact                  Docker Image         |
|      (Source Code)             (target/*.jar)             (devops-hello:latest)       |
+---------------------------------------------------------------------------------------+
```

---

## 📝 Algorithm / Procedure

### 1. Install and Access Jenkins
1. Run Jenkins natively or using the provided `docker-compose-jenkins.yml`:
   ```bash
   docker compose -f docker-compose-jenkins.yml up -d
   ```
2. Open your web browser and navigate to `http://localhost:8080`.
3. Retrieve initial admin password:
   - Linux / Docker: `docker logs jenkins` or `cat /var/jenkins_home/secrets/initialAdminPassword`
   - Windows: `C:\Program Files\Jenkins\secrets\initialAdminPassword`
4. Complete the initial setup wizard and install **Suggested Plugins** (including Git, Pipeline).

### 2. Configure Global Tools in Jenkins
1. Navigate to **Manage Jenkins** -> **Tools** (or **Global Tool Configuration**).
2. Locate the **Maven** section.
3. Click **Add Maven**:
   - **Name:** `Maven3` *(Note: Must match `tools { maven 'Maven3' }` in Jenkinsfile)*.
   - Choose **Install automatically** from Apache, or specify the local `MAVEN_HOME` path.
4. Locate the **JDK** section and configure JDK 17 if needed.
5. Save changes.

### 3. Configure Docker Access
1. Ensure the Docker daemon is accessible by Jenkins.
2. If running on Linux host:
   ```bash
   sudo usermod -aG docker jenkins
   sudo systemctl restart jenkins
   ```

### 4. Create Pipeline Job
1. In the Jenkins dashboard, click **New Item**.
2. Enter an item name (e.g., `DevOpsPipeline`), select **Pipeline**, and click **OK**.
3. Under the **Pipeline** configuration tab:
   - Select **Pipeline script**.
   - Paste the declarative Jenkinsfile script below.
   - Alternatively, choose **Pipeline script from SCM**, choose Git, and point to your repository.
4. Click **Save**.

### 5. Execute Pipeline and Verify
1. Click **Build Now** on the left menu.
2. Click on the build number (e.g., `#1`) and open **Console Output**.
3. Verify the execution of all three stages:
   - **Checkout**: Successfully clones repository.
   - **Maven Build**: Compiles Java files and packages JAR.
   - **Docker Build**: Packages JAR into `devops-hello:latest` Docker image.

---

## 💻 Pipeline Code (`Jenkinsfile`)

```groovy
pipeline {
    agent any

    tools {
        maven 'Maven3'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/harisaravananm/DevOpslab_exp.git'
            }
        }

        stage('Maven Build') {
            steps {
                // Use 'bat' for Windows agents, 'sh' for Linux agents
                bat 'mvn clean package'
                // sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                // Use 'bat' for Windows agents, 'sh' for Linux agents
                bat 'docker build -t devops-hello:latest .'
                // sh 'docker build -t devops-hello:latest .'
            }
        }
    }
}
```

---

## 📊 Expected Terminal Output (Jenkins Console)

```text
Started by user Student
[Pipeline] Start of Pipeline
[Pipeline] { (Checkout)
[Pipeline] git
Checking out source code...
 > git rev-parse --is-inside-work-tree # timeout=10
Fetching changes from the remote Git repository
 > git fetch --tags --force --progress -- https://github.com/harisaravananm/DevOpslab_exp.git
 > git checkout main
Checkout completed successfully
[Pipeline] }
[Pipeline] { (Maven Build)
[Pipeline] bat
C:\Jenkins\workspace\DevOpsPipeline> mvn clean package
[INFO] Scanning for projects...
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] Building devops-jenkins-demo 1.0-SNAPSHOT
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] Compiling source files...
[INFO] Tests run: 1, Failures: 0, Errors: 0, Skipped: 0
[INFO] Building jar: C:\Jenkins\workspace\DevOpsPipeline\target\devops-jenkins-demo-1.0-SNAPSHOT.jar
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[Pipeline] }
[Pipeline] { (Docker Build)
[Pipeline] bat
C:\Jenkins\workspace\DevOpsPipeline> docker build -t devops-hello:latest .
[+] Building 1.2s (7/7) FINISHED
 => [internal] load build definition from Dockerfile
 => => transferring dockerfile: 312B
 => [1/3] FROM openjdk:17-alpine
 => [2/3] WORKDIR /app
 => [3/3] COPY target/*.jar app.jar
 => exporting to image
 => => naming to docker.io/library/devops-hello:latest
Successfully built xxxxxxxx
Successfully tagged devops-hello:latest
[Pipeline] }
[Pipeline] End of Pipeline
Finished: SUCCESS

Pipeline Stages:
  Checkout       SUCCESS [ 2s ]
  Maven Build    SUCCESS [ 8s ]
  Docker Build   SUCCESS [ 5s ]

Docker image created:
  devops-hello:latest
```

---

## 📂 Included Supporting Files
- `Jenkinsfile` - Declarative CI/CD pipeline definition.
- `pom.xml` - Maven project descriptor for the build stage.
- `Dockerfile` - Container specification for the Docker stage.
- `src/main/java/com/example/DevOpsApp.java` - Source application.
- `docker-compose-jenkins.yml` - Quick local Jenkins runner with Docker socket pass-through.

---

## 🎯 Program Outcomes (PO) & Program Specific Outcomes (PSO) Attained
| PO1 | PO2 | PO3 | PO4 | PO5 | PO6 | PO7 | PO8 | PO9 | PO10 | PO11 | PO12 | PSO1 | PSO2 | PSO3 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:----:|:----:|:----:|:----:|:----:|:----:|
|  3  |  3  |  3  |  3  |  3  |  2  |  2  |  2  |  3  |  3   |  3   |  3   |  3   |  2   |  3   |

---

## 🏆 Result
Thus, Apache Maven and Docker were configured in Jenkins, and the CI/CD pipeline was created and executed successfully. All build stages (Checkout, Maven Build, Docker Build) passed and produced the verified container image.
