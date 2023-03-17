terraform {
  backend "s3" {
    bucket         = "jguzman-terraform-remote-state-two"
    encrypt        = true
    key            = "tf/terraform-workspace-poc/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "Terraform-backend-lock"
  }
}