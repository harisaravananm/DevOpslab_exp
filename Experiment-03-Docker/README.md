# Experiment 3: Installing Docker Container on Windows/Linux and Issuing Docker Commands

[![Docker](https://img.shields.io/badge/Container-Docker-2496ED?logo=docker&logoColor=white)](#)
[![IFET AI&ML](https://img.shields.io/badge/Department-AI%20%26%20ML-blue)](#)
[![Academic Year](https://img.shields.io/badge/Academic%20Year-2026--2027-green)](#)

---

## 📌 Experiment Details
- **Experiment No:** 03
- **Title:** Installing Docker container on Windows/Linux and issuing Docker commands
- **Course Outcome:** **P405.1** - Implement containerization technologies for consistent application packaging and deployment.
- **Regulation:** IFETCE R-2023

---

## 🎯 Aim
To install Docker on Windows/Linux and execute basic Docker commands for downloading images, creating containers, viewing containers and images, and managing Docker resources.

---

## 🛠️ Software & System Requirements
- **Operating System:** Windows 10/11 (with WSL2 enabled) or Linux (Ubuntu 20.04/22.04 LTS)
- **Container Engine:** Docker Desktop (Windows) or Docker Engine / CE (Linux)
- **Terminal:** PowerShell / Command Prompt / Bash Terminal

---

## 🧠 Architectural Overview: Docker Engine
Docker uses a client-server architecture:
```
+-------------------------------------------------------------+
|                        Docker Host                          |
|  +---------------+      +--------------------------------+  |
|  | Docker Client | ---> |          Docker Daemon         |  |
|  | (CLI: docker) |      |            (dockerd)           |  |
|  +---------------+      +--------------------------------+  |
|                                 |              |             |
|                                 v              v             |
|                            [Images]       [Containers]       |
+---------------------------------|---------------------------+
                                  |
                                  v
                    +---------------------------+
                    |       Docker Hub          |
                    |     (Public Registry)     |
                    +---------------------------+
```

---

## 📝 Algorithm / Procedure

### 1. Installing Docker
- **On Windows:**
  1. Download Docker Desktop from [docker.com](https://www.docker.com/products/docker-desktop).
  2. Run the installer and check the box for **Use WSL 2 instead of Hyper-V**.
  3. Restart the system when prompted.
  4. Launch Docker Desktop and wait until status is **Engine Running**.
- **On Linux (Ubuntu):**
  ```bash
  sudo apt update
  sudo apt install -y ca-certificates curl gnupg
  curl -fsSL https://get.docker.com -o get-docker.sh
  sudo sh get-docker.sh
  sudo systemctl start docker
  sudo systemctl enable docker
  sudo usermod -aG docker $USER
  ```

### 2. Verifying Installation
1. Check the Docker version:
   ```bash
   docker --version
   ```
2. Inspect Docker system-wide configuration:
   ```bash
   docker info
   ```

### 3. Pulling Container Images
1. Pull the official test image:
   ```bash
   docker pull hello-world
   ```
2. Pull a base OS image:
   ```bash
   docker pull ubuntu
   ```
3. List locally cached images:
   ```bash
   docker images
   ```

### 4. Creating and Running Containers
1. Run the `hello-world` test container:
   ```bash
   docker run hello-world
   ```
2. Run an interactive Ubuntu container with a bash shell:
   ```bash
   docker run -it ubuntu
   # Inside container prompt:
   cat /etc/os-release
   exit
   ```
3. List active running containers:
   ```bash
   docker ps
   ```
4. List all containers (both running and stopped):
   ```bash
   docker ps -a
   ```

### 5. Managing Container Lifecycles & Cleanup
1. Stop a running container:
   ```bash
   docker stop <CONTAINER_ID>
   ```
2. Remove a stopped container:
   ```bash
   docker rm <CONTAINER_ID>
   ```
3. Remove a local image:
   ```bash
   docker rmi <IMAGE_ID>
   ```

---

## 💻 Step-by-Step Commands Reference

```bash
# 1. Verification
docker --version
docker info

# 2. Image Acquisition
docker pull hello-world
docker images

# 3. Running Test Container
docker run hello-world

# 4. Interactive Ubuntu Container
docker pull ubuntu
docker run -it ubuntu

# 5. Process Monitoring
docker ps
docker ps -a

# 6. Container Management & Cleanup
docker stop <CONTAINER_ID>
docker rm <CONTAINER_ID>
docker rmi <IMAGE_ID>

# 7. Building Custom Image (Bonus)
docker build -t devops-web:1.0 .
docker run -d -p 8080:80 --name my-web devops-web:1.0
```

---

## 📊 Expected Terminal Output

```text
C:\> docker --version
Docker version 27.x.x, build xxxxxxx

C:\> docker info
Client:
 Version:    27.x.x
 Context:    desktop-linux
 Debug Mode: false

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Images: 0
 Server Version: 27.x.x
 Operating System: Docker Desktop

C:\> docker pull hello-world
Using default tag: latest
latest: Pulling from library/hello-world
Status: Downloaded newer image for hello-world:latest
docker.io/library/hello-world:latest

C:\> docker images
REPOSITORY    TAG       IMAGE ID       CREATED        SIZE
hello-world   latest    xxxxxxxx       2 weeks ago   10kB

C:\> docker run hello-world

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

C:\> docker pull ubuntu
Using default tag: latest
latest: Pulling from library/ubuntu
Status: Downloaded newer image for ubuntu:latest

C:\> docker run -it ubuntu
root@xxxxxxxx:/# echo "Inside Container"
Inside Container
root@xxxxxxxx:/# exit
exit

C:\> docker ps
CONTAINER ID   IMAGE     COMMAND       STATUS
xxxxxxxxxxxx   ubuntu    "/bin/bash"   Up 10 seconds

C:\> docker ps -a
CONTAINER ID   IMAGE         STATUS
xxxxxxxxxxxx   ubuntu        Exited
yyyyyyyyyyyy   hello-world   Exited

C:\> docker stop <CONTAINER_ID>
<CONTAINER_ID>

C:\> docker rm <CONTAINER_ID>
<CONTAINER_ID>

C:\> docker rmi <IMAGE_ID>
Untagged: ubuntu:latest
Deleted: sha256:xxxxxxxx
```

---

## 📂 Included Project Files
- `Dockerfile` - Demonstrates containerizing an application with Nginx/Alpine.
- `docker-compose.yml` - Demonstrates declarative service definition.
- `docker_commands.bat` - Windows execution helper script.
- `docker_commands.sh` - Linux execution helper script.
- `app/index.html` - Static web page served by custom container.

---

## 🎯 Program Outcomes (PO) & Program Specific Outcomes (PSO) Attained
| PO1 | PO2 | PO3 | PO4 | PO5 | PO6 | PO7 | PO8 | PO9 | PO10 | PO11 | PO12 | PSO1 | PSO2 | PSO3 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:----:|:----:|:----:|:----:|:----:|:----:|
|  3  |  3  |  3  |  3  |  3  |  2  |  2  |  2  |  3  |  3   |  3   |  3   |  3   |  2   |  3   |

---

## 🏆 Result
Thus, Docker was installed and verified successfully. Docker images were pulled, containers were created and executed, and basic Docker management commands were performed successfully.
