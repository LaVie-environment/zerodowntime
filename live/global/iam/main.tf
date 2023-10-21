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
  for_each = var.module_enabled ? var.user_names : []

  name                 = each.key
  path                 = var.path
  permissions_boundary = var.permissions_boundary
  force_destroy        = var.force_destroy
  tags                 = var.tags

  depends_on = [var.module_depends_on]
}