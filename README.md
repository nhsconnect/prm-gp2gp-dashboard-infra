# prm-gp2gp-dashboard-infra

## Setup

These instructions assume you are using:

- [aws-vault](https://github.com/99designs/aws-vault) to validate your aws credentials.
- [dojo](https://github.com/kudulab/dojo) to provide an execution environment

## Applying terraform

### Enter the container:

`aws-vault exec <profile-name> -- dojo`

### Invoke terraform locally:

- for common account - dev environment

```
  NHS_ACCOUNT=common-dev ./tasks validate
  NHS_ACCOUNT=common-dev ./tasks plan
```

- for common account - prod environment

```
  NHS_ACCOUNT=common-prod ./tasks validate
  NHS_ACCOUNT=common-prod ./tasks plan
```

- for dev account

```
  NHS_ACCOUNT=dev ./tasks validate
  NHS_ACCOUNT=dev ./tasks plan
```

- for preprod account

```
  NHS_ACCOUNT=preprod ./tasks validate
  NHS_ACCOUNT=preprod ./tasks plan
```
