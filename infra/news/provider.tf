# Setup our aws provider
variable "region" {
  default = "us-east-1"
}
provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "git-sre-ops-tf-states-dev"
    region = "us-east-1"
    dynamodb_table = "git-sre-ops-tf-states-dev-locks"
    key = "news/terraform.tfstate"
  }
}
