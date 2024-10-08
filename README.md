# Terraform GitLab CI/CD Pipeline for AWS Infrastructure

This repository contains a GitLab CI/CD configuration for managing AWS infrastructure using Terraform. The pipeline automates the workflow from initialization and validation to planning and deployment.

## Pipeline Overview

The CI/CD pipeline consists of the following stages:

1. **Prepare**: Initializes the Terraform environment and sets up necessary configurations.
2. **Validate**: Validates the Terraform configuration for syntax and best practices.
3. **Build**: Generates a Terraform execution plan and produces a JSON representation.
4. **Deploy**: Applies Terraform changes to the AWS environment (manual trigger to prevent accidental execution).

## Configuration Details

### Docker Image

The pipeline uses the official Terraform Docker image provided by GitLab.

```yaml
image: registry.gitlab.com/gitlab-org/terraform-images/stable:latest

## AWS Changes
1. bucket name
2. dynamo db table (LockID)

## Gitlab(CICD Variable)
1. Variable (HCP_CLIENT_ID) and (HCP_CLIENT_SECRET)

## Vault
1. Create Variable by name of AWS_ACCESS_KEY_ID , AWS_SECRET_ACCESS_KEY
