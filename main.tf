terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws   = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "s3" {
  bucket         = var.s3_bucket_name
  key            = "tfstate/terraform.tfstate"
  region         = "us-east-1"
  encrypt        = true
  dynamodb_table = "my-terraform-locks"
  }
  
}

provider "aws" {
  alias  = "aws"
  region = var.aws_region
}

provider "azurerm" {
  alias           = "azure"
#   features        = {}
}

module "aws_s3" {
  source      = "./aws"
  aws_region  = var.aws_region
  bucket_name = var.s3_bucket_name
}

module "azure_storage" {
  source           = "./azure"
  resource_group   = var.azure_resource_group
  storage_name     = var.azure_storage_name
  azure_location   = var.azure_location
}
