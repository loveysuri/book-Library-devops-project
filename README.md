# 🚀 DevOps CI/CD Pipeline: GitHub → Jenkins → Docker → Kubernetes

## 📌 Project Overview

This project demonstrates an end-to-end **CI/CD pipeline** for deploying a Spring Boot microservice using modern DevOps tools.
The pipeline automates the entire workflow from code commit to deployment on Kubernetes.

---

## 🏗️ Architecture

```
Developer → GitHub → Jenkins → Docker → Kubernetes
```

---

## ⚙️ Tech Stack

* Java (Spring Boot)
* Docker (Containerization)
* Jenkins (CI/CD Pipeline)
* Kubernetes (Container Orchestration)
* GitHub (Version Control)

---

## 🔄 CI/CD Pipeline Flow

1. Developer pushes code to GitHub repository
2. Jenkins pipeline is triggered automatically
3. Application is built using Maven
4. Docker image is created
5. Docker image is pushed to Docker Hub
6. Kubernetes deployment is updated
7. Application is deployed and exposed via service

---

## 📁 Project Structure

```
project-root/
│
├── src/                     # Spring Boot source code
├── Dockerfile              # Docker image configuration
├── Jenkinsfile            # CI/CD pipeline definition
├── app-deployment.yaml    # Kubernetes deployment/service config
└── db-deployment.yaml       # Kubernetes deployment/service config
├── pom.xml                # Maven build file
└── README.md
```

---

## 🐳 Docker Setup

### Build Docker Image

```
docker build -t lovekumar63988/book-library .
```

### Run Container

```
docker run -p 8080:8080 <your-docker-username>/app-name
```

---

## 🔧 Jenkins Pipeline

Pipeline stages:

* Build (Maven)
* Test
* Docker Build
* Push to Docker Hub
* Deploy to Kubernetes


## ☸️ Kubernetes Deployment

### Apply Deployment

```
kubectl apply -f app-deployment.yaml
kubectl apply -f db-deployment.yaml

```

### Check Pods

```
kubectl get pods
```


## 💡 Key Features

* Automated CI/CD pipeline
* Containerized application using Docker
* Scalable deployment using Kubernetes
* Reduced manual deployment effort
* Improved release consistency

---

## 🚀 Future Improvements

* Add Helm charts for deployment
* Integrate monitoring with Prometheus & Grafana
* Implement Blue-Green or Canary deployments
* Add security scanning (DevSecOps)

---

## 👨‍💻 Author

Love Kumar
DevOps Engineer | Java | Spring Boot | Cloud & CI/CD

---
