# Experiment 1: Git Version Control Basics & Branch Management

[![Git](https://img.shields.io/badge/Version%20Control-Git-F05032?logo=git&logoColor=white)](#)
[![IFET AI&ML](https://img.shields.io/badge/Department-AI%20%26%20ML-blue)](#)
[![Academic Year](https://img.shields.io/badge/Academic%20Year-2026--2027-green)](#)

---

## 📌 Experiment Details
- **Experiment No:** 01
- **Title:** Creating a new Git repository, cloning an existing repository, checking changes, pushing changes to a Git remote and creating a Git branch
- **Course Outcome:** **P405.1** - Apply version control principles to track source code changes and manage collaboration.
- **Regulation:** IFETCE R-2023

---

## 🎯 Aim
To create and manage a Git repository by initializing a repository, cloning an existing repository, checking changes, staging and committing files, pushing changes to a remote repository, and creating a new Git branch.

---

## 🛠️ Software & System Requirements
- **Operating System:** Windows 10/11, Ubuntu 20.04+, or macOS
- **Tools:** Git (v2.x or later)
- **Terminal:** PowerShell, Command Prompt, or Git Bash / Linux Terminal
- **Remote Host:** GitHub / GitLab account

---

## 🧠 Architectural Overview
Git operates on four primary data states:
```
+--------------------+        git add        +------------------+
| Working Directory  | --------------------> |  Staging Area    |
| (Untracked/Modified)|                       |     (Index)      |
+--------------------+                       +------------------+
                                                       |
                                                       | git commit
                                                       v
+--------------------+        git push        +------------------+
| Remote Repository  | <-------------------- | Local Repository |
| (GitHub/GitLab)    | --------------------> |     (HEAD)       |
+--------------------+       git pull        +------------------+
```

---

## 📝 Algorithm / Procedure

### 1. Creating a New Git Repository
1. Open terminal or command prompt.
2. Navigate to your target directory: `cd <path>`.
3. Create a project folder: `mkdir devops-git` and enter it: `cd devops-git`.
4. Initialize the Git repository: `git init`.
5. Create a project documentation file: `README.md`.

### 2. Checking Repository Status
1. Run `git status` to observe untracked files.
2. Verify that `README.md` is detected as an untracked change.

### 3. Configuring Git Identity
1. Configure your committer identity globally:
   ```bash
   git config --global user.name "Your Name"
   git config --global user.email "you@example.com"
   ```

### 4. Staging and Committing Changes
1. Stage the file for tracking: `git add README.md` (or `git add .` for all).
2. Commit the changes to local history:
   ```bash
   git commit -m "Initial commit"
   ```

### 5. Cloning an Existing Repository
1. To inspect or contribute to an existing project, run:
   ```bash
   git clone <REPOSITORY-URL>
   cd <REPOSITORY-NAME>
   git status
   ```

### 6. Pushing Changes to a Remote
1. Link your local repository to a remote Git hosting service:
   ```bash
   git remote add origin <REMOTE-URL>
   git remote -v
   ```
2. Rename current active branch to `main`:
   ```bash
   git branch -M main
   ```
3. Push initial commit to remote tracking branch:
   ```bash
   git push -u origin main
   ```

### 7. Branching Workflow
1. Create and switch to an isolated feature branch:
   ```bash
   git switch -c feature-demo
   ```
2. Verify branch switch using `git branch`.
3. Check status on new branch using `git status`.

---

## 💻 Step-by-Step Commands Reference

```bash
# 1. Verify Git Installation
git --version

# 2. Create project folder and initialize
mkdir devops-git
cd devops-git
git init

# 3. Create sample content and check status
echo "# DevOps Git Lab" > README.md
git status

# 4. Set Git committer details
git config --global user.name "Your Name"
git config --global user.email "you@example.com"

# 5. Stage and commit
git add README.md
git commit -m "Initial commit"

# 6. Cloning an existing remote repo
git clone <REPOSITORY-URL>
cd <REPOSITORY-NAME>
git status

# 7. Configure remote origin and push
git remote -v
git remote add origin <REMOTE-URL>
git branch -M main
git push -u origin main

# 8. Create feature branch and inspect
git switch -c feature-demo
git branch
git status
```

---

## 📊 Expected Terminal Output

```text
C:\> git --version
git version 2.46.0

C:\> mkdir devops-git
C:\> cd devops-git

C:\devops-git> git init
Initialized empty Git repository in C:/devops-git/.git/

C:\devops-git> echo "# DevOps Git Lab" > README.md

C:\devops-git> git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        README.md

nothing added to commit but untracked files present (use "git add" to track)

C:\devops-git> git config --global user.name "Your Name"
C:\devops-git> git config --global user.email "you@example.com"

C:\devops-git> git add README.md

C:\devops-git> git commit -m "Initial commit"
[master (root-commit) a1b2c3d] Initial commit
 1 file changed, 1 insertion(+)
 create mode 100644 README.md

C:\devops-git> git clone <REPOSITORY-URL>
Cloning into '<REPOSITORY-NAME>'...
remote: Enumerating objects...
Receiving objects: 100%...done.

C:\devops-git> git remote -v
origin  <REMOTE-URL> (fetch)
origin  <REMOTE-URL> (push)

C:\devops-git> git branch -M main

C:\devops-git> git push -u origin main
Enumerating objects: 3, done.
Writing objects: 100% (3/3), done.
branch 'main' set up to track 'origin/main'.

C:\devops-git> git switch -c feature-demo
Switched to a new branch 'feature-demo'

C:\devops-git> git branch
* feature-demo
  main

C:\devops-git> git status
On branch feature-demo
nothing to commit, working tree clean
```

---

## 📂 Included Demo Files
- `git_demo.sh` - Automated shell script for Linux/macOS/Git Bash.
- `git_demo.bat` - Automated batch script for Windows.
- `sample-project/` - Minimal project structure ready for version control demonstration.

---

## 🎯 Program Outcomes (PO) & Program Specific Outcomes (PSO) Attained
| PO1 | PO2 | PO3 | PO4 | PO5 | PO6 | PO7 | PO8 | PO9 | PO10 | PO11 | PO12 | PSO1 | PSO2 | PSO3 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:----:|:----:|:----:|:----:|:----:|:----:|
|  3  |  3  |  3  |  3  |  3  |  2  |  2  |  2  |  3  |  3   |  3   |  3   |  3   |  2   |  3   |

---

## 🏆 Result
Thus, the Git repository was created, an existing repository was cloned, changes were tracked, staged, committed, and pushed to a remote repository, and a new Git branch was created and verified successfully.
