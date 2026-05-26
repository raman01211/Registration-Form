# Registration Form - Java EE Web App

![Java](https://img.shields.io/badge/Java-8-orange?logo=java)
![Maven](https://img.shields.io/badge/Maven-3.8-C71A36?logo=apachemaven)
![Jenkins](https://img.shields.io/badge/Jenkins-CI-D24939?logo=jenkins)
![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?logo=docker)

A Java EE registration form web application built with Maven and deployed on Apache Tomcat.

## Quick Start

```bash
make run
```

Open [http://localhost:8080](http://localhost:8080).

## Run Locally

```bash
mvn clean package -DskipTests
cp webapp/target/*.war /path/to/tomcat/webapps/ROOT.war
```

## Project Structure

| Directory | Description |
|-----------|-------------|
| [`server/`](server/) | Backend server module |
| [`webapp/`](webapp/) | Web application module (JSP, servlets) |
| [`Jenkinsfile`](Jenkinsfile) | CI pipeline configuration |
| [`Dockerfile`](Dockerfile) | Multi-stage Docker build (Maven → Tomcat) |

## Commands

| Command | Description |
|---------|-------------|
| `make build` | Build project with Maven |
| `make run` | Build and run Docker container |
| `make clean` | Stop Docker and clean Maven build |
