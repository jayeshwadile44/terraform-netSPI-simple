terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA3CUBPFFSKIA22V5Y"
  secret_key = "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"
}
