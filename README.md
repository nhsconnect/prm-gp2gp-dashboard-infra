# prm-gp2gp-dashboard-infra

## Setup

These instructions assume you are using:
- [aws-vault](https://github.com/99designs/aws-vault) to validate your aws credentials.

## Applying terraform

### Assume admin role:

`aws-vault exec <profile-name>`

### Validate that you assumed the correct role:

`aws sts get-caller-identity`

### Invoke terraform

```
  export STACK=dashboard
  export ENVIRONMENT=dev
  terraform init -backend-config key=${ENVIRONMENT}/${STACK}/terraform.tfstate
  terraform apply -var environment=${ENVIRONMENT}
```