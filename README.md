# prm-gp2gp-dashboard-infra

## Applying terraform

### Assume admin role:

`aws eval $(aws-cli-assumerole -rmfa <role-arn> <mfa-code>)`

### Validate that you assumed the correct role:

`aws sts get-caller-identity`

### Invoke terraform

```
  export STACK=dashboard
  export ENVIRONMENT=dev
  terraform init -backend-config key=${ENVIRONMENT}/${STACK}/terraform.tfstate
  terraform apply -var environment=${ENVIRONMENT}
```