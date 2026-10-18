# Experiment 6: Creating a GitHub Account, Repository and Pushing a Simple Hello World Application

[![GitHub](https://img.shields.io/badge/Hosting-GitHub-181717?logo=github&logoColor=white)](#)
[![Java](https://img.shields.io/badge/Language-Java-ED8B00?logo=openjdk&logoColor=white)](#)
[![IFET AI&ML](https://img.shields.io/badge/Department-AI%20%26%20ML-blue)](#)

---

## 📌 Experiment Details
- **Experiment No:** 06
- **Title:** GitHub Account, Repository Creation and Application Push
- **Course Outcome:** **P405.1** - Establish collaborative remote Git repositories and manage code deployment.
- **Regulation:** IFETCE R-2023

---

## 🎯 Aim
To create a GitHub account and repository, prepare a simple application, connect the local Git repository to GitHub, and push the application source code.

---

## 🛠️ Software & System Requirements
- **Web Browser:** Google Chrome / Firefox / Edge
- **Git:** Git CLI (v2.x or later)
- **Account:** GitHub Account ([github.com](https://github.com))
- **JDK:** Java 8 or later (to compile & run `HelloWorld.java`)
- **Terminal:** Command Prompt / PowerShell / Linux Terminal

---

## 🧠 Architectural Overview: Local-to-Remote Git Synchronization
```
+------------------------------------+               +--------------------------------------+
|          Local Machine             |               |           GitHub Cloud               |
|                                    |   git push    |                                      |
|  [HelloWorld.java]                 | ------------> |  Repository:                         |
|  [README.md]                       |  (HTTPS/SSH)  |  https://github.com/<USER>/repo.git  |
|                                    |               |                                      |
|  git init                          |               |  Branch: main                        |
|  git add .                         |               |  - HelloWorld.java                   |
|  git commit -m "..."               |               |  - README.md                         |
+------------------------------------+               +--------------------------------------+
```

---

## 📝 Algorithm / Procedure

### 1. Create a GitHub Account
1. Open [https://github.com](https://github.com) in your browser.
2. Sign up with your college/personal email address and complete email verification.
3. If already registered, sign in.

### 2. Create a Remote Repository on GitHub
1. In the upper-right corner of GitHub, click `+` and select **New repository**.
2. Enter the repository name: `hello-world-devops`.
3. Choose visibility: **Public** (or Private).
4. Leave *Add a README file*, *.gitignore*, and *license* **unchecked** (we will push from local).
5. Click **Create repository**.
6. Copy the repository HTTPS URL: `https://github.com/<USERNAME>/hello-world-devops.git`.

### 3. Create Local Project Files
1. Create a project directory:
   ```bash
   mkdir hello-world-devops
   cd hello-world-devops
   ```
2. Create project documentation:
   ```bash
   echo "# Hello World DevOps Project" > README.md
   ```
3. Create the Java application source file `HelloWorld.java`:
   ```java
   public class HelloWorld {
       public static void main(String[] args) {
           System.out.println("Hello World");
       }
   }
   ```

### 4. Commit and Push to GitHub
1. Initialize local Git tracking:
   ```bash
   git init
   ```
2. Stage all project files:
   ```bash
   git add .
   ```
3. Commit files with a clear message:
   ```bash
   git commit -m "Add Hello World application"
   ```
4. Rename default branch to `main`:
   ```bash
   git branch -M main
   ```
5. Link remote repository:
   ```bash
   git remote add origin https://github.com/<USERNAME>/hello-world-devops.git
   ```
6. Push local commits to remote:
   ```bash
   git push -u origin main
   ```

### 5. Verify the Remote Repository
1. Refresh the GitHub repository URL in your web browser.
2. Verify that `README.md` and `HelloWorld.java` are displayed in the repository file list.

---

## 💻 Step-by-Step Commands Reference

```bash
mkdir hello-world-devops
cd hello-world-devops

echo "# Hello World DevOps Project" > README.md
echo "public class HelloWorld { public static void main(String[] args) { System.out.println(\"Hello World\"); } }" > HelloWorld.java

# Compile and test locally
javac HelloWorld.java
java HelloWorld

# Initialize Git and commit
git init
git add .
git commit -m "Add Hello World application"
git branch -M main

# Link and push to GitHub
git remote add origin https://github.com/<USERNAME>/hello-world-devops.git
git push -u origin main
```

---

## 📊 Expected Terminal Output

```text
C:\> mkdir hello-world-devops
C:\> cd hello-world-devops

C:\hello-world-devops> echo "# Hello World DevOps Project" > README.md

C:\hello-world-devops> git init
Initialized empty Git repository in C:/hello-world-devops/.git/

C:\hello-world-devops> git add .

C:\hello-world-devops> git commit -m "Add Hello World application"
[master (root-commit) a1b2c3d] Add Hello World application
 2 files changed, 2 insertions(+)
 create mode 100644 README.md
 create mode 100644 HelloWorld.java

C:\hello-world-devops> git branch -M main

C:\hello-world-devops> git remote add origin https://github.com/<USERNAME>/hello-world-devops.git

C:\hello-world-devops> git push -u origin main
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Writing objects: 100% (4/4), done.
Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/<USERNAME>/hello-world-devops.git
 * [new branch]      main -> main
branch 'main' set up to track 'origin/main'.

GitHub Repository:
  https://github.com/<USERNAME>/hello-world-devops

Repository contents:
  - README.md
  - HelloWorld.java

HelloWorld.java execution:
  Hello World
```

---

## 📂 Included Project Files
- `HelloWorld.java` - Source application.
- `setup_and_push.bat` - Windows interactive batch script.
- `setup_and_push.sh` - Linux/macOS interactive shell script.
- `.gitignore` - Standard ignore rules.

---

## 🎯 Program Outcomes (PO) & Program Specific Outcomes (PSO) Attained
| PO1 | PO2 | PO3 | PO4 | PO5 | PO6 | PO7 | PO8 | PO9 | PO10 | PO11 | PO12 | PSO1 | PSO2 | PSO3 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:----:|:----:|:----:|:----:|:----:|:----:|
|  3  |  3  |  3  |  3  |  3  |  2  |  2  |  2  |  3  |  3   |  3   |  3   |  3   |  2   |  3   |

---

## 🏆 Result
Thus, a GitHub account and repository were created, a simple Hello World application was committed to the local Git repository, pushed to GitHub, and verified successfully on the remote repository.
