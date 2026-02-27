````md
# Java Maven Application – Local and Docker Setup
```
This repository contains a basic Java Maven HTTP server application that runs on port 8080.

The purpose of this project is to build and run the application locally and inside a Docker container.
```

---

## Prerequisites
```
Ensure the following tools are installed:

- Java 17 or higher  
- Maven  
- Docker  

Verify installations:

```bash
java -version
mvn -version
docker --version
````

---

## Project Structure

```
k8s-java-app/
 ├── pom.xml
 ├── Dockerfile
 ├── README.md
 ├── src/
 └── target/
```

---

## Build and Run Locally

Navigate to the project directory (where `pom.xml` exists):

```bash
cd k8s-java-app
```

Build the project:

```bash
mvn clean package
```

Run the application:

```bash
java -cp target/k8s-java-app-1.0-SNAPSHOT.jar com.spatika.app.App
```

The application will start on port 8080.

Open a browser and access:

```
http://localhost:8080
```

---

## Docker Setup

### Build Docker Image

Run the following command from the project root directory:

```bash
docker build -t k8s-java-app:v1 .
```

### Run Docker Container

```bash
docker run -p 8080:8080 k8s-java-app:v1
```

Open a browser and access:

```
http://localhost:8080
```

The application should respond from inside the container.

---

## Rebuild After Code Changes

If you modify code, rebuild and run again:

```bash
mvn clean package
docker build -t k8s-java-app:v1 .
docker run -p 8080:8080 k8s-java-app:v1
```

---

## Troubleshooting

### Port already in use

If port 8080 is busy:

```bash
sudo lsof -i :8080
```

Kill process or run container on another port:

```bash
docker run -p 9090:8080 k8s-java-app:v1
```

### Docker permission denied

```bash
sudo usermod -aG docker $USER
newgrp docker
```

---

## Author

Spatika

```
```