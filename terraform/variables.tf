variable "environment" {
  type        = string
  description = "Uniquely idenities each deployment, i.e. dev, prod."
}

variable "region" {
  type        = string
  description = "AWS region."
  default     = "eu-west-2"
}
