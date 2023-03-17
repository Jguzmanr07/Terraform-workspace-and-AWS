#Define AWS Region
variable "region" {
  description = "Infrastructure region"
  type        = string
  default     = "us-east-1"
}
#Define VPC Address Space
variable "vpc_address_space" {
  type = map(any)
  default = {
    Dev  = "10.8.0.0/23"
    Test = "10.9.0.0/22"
    Prod = "10.10.0.0/20"
  }
}
variable "provider_env_roles" {
  type = map(any)
  default = {
    "Dev"  = "arn:aws:iam::669487844008:role/RoleToBeAssumed"
    "Test" = "arn:aws:iam::669487844008:role/RoleToBeAssumed"
    "Prod" = "arn:aws:iam::669487844008:role/RoleToBeAssumed"
  }
}
variable "subnet_address_space" {
  type = map(any)
  default = {
    Dev  = ["10.8.0.0/24"]
    Test = ["10.9.0.0/24", "10.9.1.0/24"]
    Prod = ["10.10.0.0/24", "10.10.1.0/24", "10.10.2.0/24"]
  }
}
locals {
  env = terraform.workspace
}
#Define IAM User Access Key
variable "access_key" {
  description = "The access_key that belongs to the IAM user"
  type        = string
  sensitive   = true
}
#Define IAM User Secret Key
variable "secret_key" {
  description = "The secret_key that belongs to the IAM user"
  type        = string
  sensitive   = true
}