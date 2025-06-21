# flask-docker-ci
A minimal Flask application with a GitHub Actions workflow to automatically build a Docker image on every push to the main branch. This project is designed as a starting point for learning CI pipelines and containerization using Docker and GitHub Actions.


## 🚀 flask-docker-ci

This is a simple Flask app packaged in a Docker container, with GitHub Actions used to build the Docker image automatically whenever changes are pushed to the `main` branch.

### ✅ Features
- Minimal Flask web server
- Dockerized app using a multi-step Dockerfile
- GitHub Actions CI pipeline for automated image builds

### 📦 Technologies Used
- Python 3.10 + Flask
- Docker
- GitHub Actions

### 🎯 Purpose
Ideal for beginners learning DevOps basics like containerization, CI/CD pipelines, and GitHub automation — without deploying or pushing images to a registry.

### 🔧 Future Ideas
- Push image to Amazon ECR
- Deploy to ECS Fargate
- Add unit tests and Docker security scans
