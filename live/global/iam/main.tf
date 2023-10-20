terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
    region = "eu-west-1"
}

resource "aws_iam_user" "user" {
    count = length(var.user_names)
    name = var.user_names[count.index]

}
