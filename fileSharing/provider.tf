terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "~>4.8.0"
    }
  }
  required_version = ">= 1.9.0"
  backend "azurerm" {
    container_name = "tfbackup"
    key = "dev.terraform.tfstate"
    storage_account_name = "tfprojectbk"
    resource_group_name = "tf-backend-rg"
  }
}

provider "azurerm" {
  features  {}
}

provider "azuread" {
  tenant_id = "3c3c213b-86c6-4570-9eb1-6d79e897cc49"
}