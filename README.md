# GitHub Actions with Terraform and WordPress Deployment
This repository demonstrates the implementation of Infrastructure as Code (IaC) using Terraform and GitHub Actions to automate the deployment and destruction of WordPress environments on AWS.

## Overview
This project showcases the automation of WordPress deployment using:

- GitHub Actions for CI/CD
- Terraform for infrastructure provisioning
- AWS services (EC2, RDS in bonus branch)
- S3 for Terraform state management

The workflow allows for both automated deployment and clean destruction of the infrastructure through GitHub's interface.

## Features

- Automated WordPress deployment on EC2
- GitHub Actions workflow for infrastructure management
- S3 backend for state management
- Secure credentials handling using GitHub Secrets
- Two-way workflow (apply/destroy)
- Enhanced WordPress deployment with RDS database (Bonus)

## GitHub Actions Workflow
The workflow supports two operations:

Terraform_apply: Deploys the infrastructure
Terraform_destroy: Cleanly destroys all created resources
