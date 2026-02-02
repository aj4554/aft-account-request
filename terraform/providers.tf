terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

# Default provider (safe to keep)
provider "aws" {
  region = var.ct_management_region
}

# AFT module requires this alias name
provider "aws" {
  alias  = "ct_management"
  region = var.ct_management_region
}
