# Experiment 7: Building a Simple Application Using Gradle

[![Gradle](https://img.shields.io/badge/Build%20Tool-Gradle-02303A?logo=gradle&logoColor=white)](#)
[![Java](https://img.shields.io/badge/Language-Java-ED8B00?logo=openjdk&logoColor=white)](#)
[![IFET AI&ML](https://img.shields.io/badge/Department-AI%20%26%20ML-blue)](#)

---

## 📌 Experiment Details
- **Experiment No:** 07
- **Title:** Building a Simple Application using Gradle
- **Course Outcome:** **P405.1** - Employ modern DSL-driven build automation frameworks.
- **Regulation:** IFETCE R-2023

---

## 🎯 Aim
To install and configure Gradle, create a simple Java application using Gradle, define the build configuration, and build and run the application.

---

## 🛠️ Software & System Requirements
- **JDK:** Java Development Kit (JDK 11, 17, or 21)
- **Build Tool:** Gradle (v7.x or 8.x) or Gradle Wrapper (`gradlew`)
- **Terminal:** Command Prompt / PowerShell / Linux Terminal

---

## 🧠 Theory: Gradle Build Automation
Gradle is a modern, high-performance build automation tool that uses Groovy or Kotlin DSLs:
- **Declarative & Incremental:** Tasks only run if inputs or outputs have changed (Build Cache).
- **DAG Execution Model:** Organizes task dependencies as a Directed Acyclic Graph (DAG).
- **Plugin Architecture:** The `application` plugin adds standard tasks like `run`, `installDist`, `distZip`, etc.

```
Project Root (gradle-hello)
  ├── build.gradle                 <-- Build script (Plugins, dependencies, mainClass)
  ├── settings.gradle              <-- Defines rootProject.name
  └── src/
       ├── main/java/com/example/  <-- Source files
       │    └── App.java
       └── test/java/com/example/  <-- Test files
            └── AppTest.java
```

---

## 📝 Algorithm / Procedure

### 1. Verify Java and Gradle Installation
1. Verify JDK availability:
   ```bash
   java -version
   ```
2. Verify Gradle CLI:
   ```bash
   gradle -version
   ```

### 2. Create the Project Directory Structure
1. Create project folder:
   ```bash
   mkdir gradle-hello
   cd gradle-hello
   mkdir -p src/main/java/com/example
   mkdir -p src/test/java/com/example
   ```

### 3. Define Project Settings & Build Configuration
1. Create `settings.gradle`:
   ```groovy
   rootProject.name = 'gradle-hello'
   ```
2. Create `build.gradle`:
   ```groovy
   plugins {
       id 'application'
   }

   group = 'com.example'
   version = '1.0'

   repositories {
       mavenCentral()
   }

   application {
       mainClass = 'com.example.App'
   }
   ```

### 4. Create the Java Application
1. Create `src/main/java/com/example/App.java`:
   ```java
   package com.example;

   public class App {
       public static void main(String[] args) {
           System.out.println("Hello from Gradle!");
       }
   }
   ```

### 5. Build, Test, and Run
1. List available Gradle tasks:
   ```bash
   gradle tasks
   ```
2. Clean existing build outputs:
   ```bash
   gradle clean
   ```
3. Compile and build the project:
   ```bash
   gradle build
   ```
4. Run the application directly:
   ```bash
   gradle run
   ```
5. Package the executable JAR:
   ```bash
   gradle jar
   ```
6. Verify output artifact at `build/libs/gradle-hello-1.0.jar`.

---

## 📊 Expected Terminal Output

```text
C:\> gradle -version

------------------------------------------------------------
Gradle 8.x
------------------------------------------------------------

Build time:   202x-xx-xx
Kotlin:       1.x.x
Groovy:       3.x.x
JVM:          17.x.x
OS:           Windows

C:\gradle-hello> gradle clean
BUILD SUCCESSFUL in 1s
1 actionable task: 1 executed

C:\gradle-hello> gradle build
> Task :compileJava
> Task :processResources NO-SOURCE
> Task :classes
> Task :jar
> Task :assemble
> Task :compileTestJava
> Task :test
> Task :check
> Task :build

BUILD SUCCESSFUL in 4s
7 actionable tasks: 7 executed

C:\gradle-hello> gradle run
> Task :run
Hello from Gradle!

BUILD SUCCESSFUL in 2s
2 actionable tasks: 1 executed

C:\gradle-hello> gradle jar
BUILD SUCCESSFUL in 1s
1 actionable task: 1 executed

Generated JAR:
  build\libs\gradle-hello-1.0.jar
```

---

## 📂 Included Project Files
- `build.gradle` - Build script configuration.
- `settings.gradle` - Project naming specification.
- `src/main/java/com/example/App.java` - Java application entry point.
- `src/test/java/com/example/AppTest.java` - Unit test suite.
- `build.bat` - Windows execution helper script.
- `build.sh` - Linux/macOS execution helper script.

---

## 🎯 Program Outcomes (PO) & Program Specific Outcomes (PSO) Attained
| PO1 | PO2 | PO3 | PO4 | PO5 | PO6 | PO7 | PO8 | PO9 | PO10 | PO11 | PO12 | PSO1 | PSO2 | PSO3 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:----:|:----:|:----:|:----:|:----:|:----:|
|  3  |  3  |  3  |  3  |  3  |  2  |  2  |  2  |  3  |  3   |  3   |  3   |  3   |  2   |  3   |

---

## 🏆 Result
Thus, a simple Java application was created using Gradle, the build configuration was defined, the application was compiled, executed, and packaged successfully, and the program output was verified.
