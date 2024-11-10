# Draft

# Main
# Golang Platform on EKS - Checklist
Application must count in memory/db how many times was executed.
Application is two or one endpoint(s) availiable from public/local network.
/greet_public
/greet_internal

scailability: 1k/rpm or 7k/rpm
environments: one or multi

## 1. Project Setup
- [X] Define project requirements (functionality, endpoints, scalability).
- [X] Set up a version-controlled repository (e.g., GitHub).

## 2. Dockerize the Golang Application
- [X] Write a Dockerfile optimized for Golang (multi-stage build).
- [ ] Configure environment variables for different environments.
- [X] Test the Dockerized application locally.

## 3. EKS Cluster Setup
- [X] Set up an EKS cluster with node groups using Terraform or AWS CloudFormation.
- [X] Define IAM roles and permissions for EKS nodes and services.
- [ ] Configure VPC, subnets, and security groups for internal and external traffic.

## 4. CI/CD Pipeline
- [ ] Set up a CI/CD pipeline (e.g., GitHub Actions, Jenkins) for Docker image build and push.
- [ ] Automate Docker image push to Amazon ECR.
- [ ] Configure deployment pipeline for EKS (using Kubernetes manifests or Helm charts).
- [ ] Automate EKS resource updates (node configuration, scaling).

## 5. Kubernetes and Helm Setup
- [ ] Create Kubernetes manifests or Helm charts for deploying Golang app (Deployment, Service, ConfigMap, Secret).
- [ ] Configure Kubernetes namespaces for environment isolation.
- [ ] Set resource limits for application pods.

## 6. Observability and Monitoring
- [ ] Integrate Prometheus for metrics collection.
- [ ] Set up Grafana for visualization.
- [ ] Configure Fluentd or AWS CloudWatch for log management.
- [ ] Set up alerting rules based on performance metrics.

## 7. Scaling and Load Testing
- [ ] Configure Horizontal Pod Autoscaling based on CPU and memory.
- [ ] Perform load testing using Locust or JMeter.

## 8. Security and Compliance
- [ ] Implement container image scanning for vulnerabilities.
- [ ] Set up Kubernetes Role-Based Access Control (RBAC) for restricted access.
- [ ] Use Kubernetes Secrets or AWS Secrets Manager for sensitive data.

## 9. Continuous Improvements
- [ ] Schedule regular updates for EKS, Docker images, and Kubernetes configs.
- [ ] Analyze resource usage and optimize for cost and performance.


