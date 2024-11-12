# Golang Platform on EKS - Checklist

## App summary
Application must count in memory how many times was executed.

Application has one endpoint(s) availiable from public/private network.

environments: one or multi

### Folder structure: 

* `/app` -  dockerized application codebase
* `/platform` - platform related codebase

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
- [X] Set up a CI/CD pipeline (e.g., GitHub Actions, Jenkins) for Docker image build and push.
- [X] Automate Docker image push to Amazon ECR.
- [ ] Configure deployment pipeline for EKS (using Kubernetes manifests or Helm charts).
- [ ] Automate EKS resource updates (node configuration, scaling).

## 5. Kubernetes and Helm Setup
- [ ] Create Kubernetes manifests or Helm charts for deploying Golang app (Deployment, Service, ConfigMap, Secret).
- [ ] Configure Kubernetes namespaces for environment isolation.
- [ ] Set resource limits for application pods.
