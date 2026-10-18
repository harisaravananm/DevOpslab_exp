# Experiment 2: Installing Maven and Setting Up a Simple Java Project with pom.xml

[![Maven](https://img.shields.io/badge/Build%20Tool-Apache%20Maven-C71A36?logo=apachemaven&logoColor=white)](#)
[![Java](https://img.shields.io/badge/Language-Java%2017-007396?logo=openjdk&logoColor=white)](#)
[![IFET AI&ML](https://img.shields.io/badge/Department-AI%20%26%20ML-blue)](#)

---

## 📌 Experiment Details
- **Experiment No:** 02
- **Title:** Installing Maven and setting up a simple Java project with `pom.xml`
- **Course Outcome:** **P405.1** - Utilize automated build tools and project management frameworks.
- **Regulation:** IFETCE R-2023

---

## 🎯 Aim
To install Apache Maven, create a simple Java project with a `pom.xml` file, and build the project using compile, test, and package commands.

---

## 🛠️ Software & System Requirements
- **JDK:** Java Development Kit (JDK 17 or compatible version 11+)
- **Build Tool:** Apache Maven (v3.8.x or later)
- **Terminal:** Command Prompt, PowerShell, or Linux Terminal

---

## 🧠 Theory: Apache Maven Architecture
Apache Maven is a software project management and comprehension tool based on the concept of a Project Object Model (`pom.xml`).

```
Project Root (MavenHello)
  ├── pom.xml                     <-- Project Object Model (Dependencies, Plugins, Goals)
  └── src/
       ├── main/
       │    └── java/com/example/ <-- Application source code
       │         └── HelloWorld.java
       └── test/
            └── java/com/example/ <-- Unit tests
                 └── HelloWorldTest.java
```

### Maven Build Lifecycle Phases:
1. `validate` - Validates that the project is correct and all necessary information is available.
2. `compile` - Compiles the source code (`src/main/java`).
3. `test` - Runs unit tests using testing frameworks like JUnit (`src/test/java`).
4. `package` - Packages the compiled code into a distributable format (e.g., JAR or WAR).
5. `clean` - Removes the target directory and generated artifacts from previous builds.

---

## 📝 Algorithm / Procedure

### 1. Verify Java Installation
1. Open terminal and verify Java compiler availability:
   ```bash
   java -version
   javac -version
   ```
2. Ensure `JAVA_HOME` environment variable is set to the JDK installation directory.

### 2. Install Maven
1. Download Apache Maven binary archive (`apache-maven-x.y.z-bin.zip` or `tar.gz`).
2. Extract to desired directory (e.g., `C:\apache-maven` or `/opt/maven`).
3. Add the `bin` directory to the system `PATH`.
4. Verify using:
   ```bash
   mvn -version
   ```

### 3. Create the Standard Maven Directory Layout
1. Create root directory `MavenHello`.
2. Generate package directory hierarchy:
   ```bash
   mkdir -p src/main/java/com/example
   mkdir -p src/test/java/com/example
   ```
3. Create `pom.xml` in the root folder.

### 4. Create the Java Application & Test
1. Create `src/main/java/com/example/HelloWorld.java` with a greeting method and main entry point.
2. Create `src/test/java/com/example/HelloWorldTest.java` with a unit test.

### 5. Build and Verify
1. Compile sources: `mvn compile`
2. Run automated tests: `mvn test`
3. Package into a JAR artifact: `mvn package`
4. Clean and rebuild: `mvn clean package`
5. Execute the generated JAR:
   ```bash
   java -cp target/maven-hello-1.0-SNAPSHOT.jar com.example.HelloWorld
   ```

---

## 💻 Project Files

### 1. `pom.xml`
```xml
<project xmlns="http://maven.apache.org/POM/4.0.0"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
 https://maven.apache.org/xsd/maven-4.0.0.xsd">
 <modelVersion>4.0.0</modelVersion>
 
 <groupId>com.example</groupId>
 <artifactId>maven-hello</artifactId>
 <version>1.0-SNAPSHOT</version>

 <properties>
   <maven.compiler.source>17</maven.compiler.source>
   <maven.compiler.target>17</maven.compiler.target>
   <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
 </properties>

 <dependencies>
   <dependency>
     <groupId>org.junit.jupiter</groupId>
     <artifactId>junit-jupiter-api</artifactId>
     <version>5.9.3</version>
     <scope>test</scope>
   </dependency>
 </dependencies>

 <build>
   <plugins>
     <plugin>
       <groupId>org.apache.maven.plugins</groupId>
       <artifactId>maven-jar-plugin</artifactId>
       <version>3.3.0</version>
       <configuration>
         <archive>
           <manifest>
             <mainClass>com.example.HelloWorld</mainClass>
           </manifest>
         </archive>
       </configuration>
     </plugin>
   </plugins>
 </build>
</project>
```

---

## 📊 Expected Terminal Output

```text
C:\> java -version
java version "17.0.2" 2022-01-18 LTS
Java(TM) SE Runtime Environment (build 17.0.2+8-LTS-86)

C:\> javac -version
javac 17.0.2

C:\> mvn -version
Apache Maven 3.8.6 (84538c9988a25aec085021c365c560670ad80f63)
Maven home: C:\apache-maven
Java version: 17.0.2, vendor: Oracle Corporation, runtime: C:\Program Files\Java\jdk-17.0.2
OS name: "windows 10", version: "10.0", arch: "amd64", family: "windows"

C:\> mkdir MavenHello
C:\> cd MavenHello
C:\MavenHello> mkdir src\main\java\com\example
C:\MavenHello> mkdir src\test\java\com\example

C:\MavenHello> mvn compile
[INFO] Scanning for projects...
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] Building maven-hello 1.0-SNAPSHOT
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] --- maven-resources-plugin:2.6:resources (default-resources) @ maven-hello ---
[INFO] skip non existing resourceDirectory C:\MavenHello\src\main\resources
[INFO] --- maven-compiler-plugin:3.1:compile (default-compile) @ maven-hello ---
[INFO] Compiling 1 source file to C:\MavenHello\target\classes
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 2.1 s

C:\MavenHello> mvn test
[INFO] Scanning for projects...
[INFO] --- maven-compiler-plugin:3.1:testCompile (default-testCompile) @ maven-hello ---
[INFO] Compiling 1 source file to C:\MavenHello\target\test-classes
[INFO] --- maven-surefire-plugin:2.12.4:test (default-test) @ maven-hello ---
[INFO] Running com.example.HelloWorldTest
[INFO] Tests run: 1, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 0.045 sec
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------

C:\MavenHello> mvn package
[INFO] Scanning for projects...
[INFO] Building jar: C:\MavenHello\target\maven-hello-1.0-SNAPSHOT.jar
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------

C:\MavenHello> mvn clean package
[INFO] Scanning for projects...
[INFO] --- maven-clean-plugin:2.5:clean (default-clean) @ maven-hello ---
[INFO] Deleting C:\MavenHello\target
[INFO] Compiling 1 source file to C:\MavenHello\target\classes
[INFO] Tests run: 1, Failures: 0, Errors: 0, Skipped: 0
[INFO] Building jar: C:\MavenHello\target\maven-hello-1.0-SNAPSHOT.jar
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
```

---

## 🎯 Program Outcomes (PO) & Program Specific Outcomes (PSO) Attained
| PO1 | PO2 | PO3 | PO4 | PO5 | PO6 | PO7 | PO8 | PO9 | PO10 | PO11 | PO12 | PSO1 | PSO2 | PSO3 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:----:|:----:|:----:|:----:|:----:|:----:|
|  3  |  3  |  3  |  3  |  3  |  2  |  2  |  2  |  3  |  3   |  3   |  3   |  3   |  2   |  3   |

---

## 🏆 Result
Thus, Apache Maven was installed and verified. A simple Java project containing `pom.xml` was created and successfully built using the compile, test, and package commands.
