terraform {
  backend "azurerm" {
    resource_group_name  = "myResourceGroup"
    storage_account_name = "terraformsastore"
    container_name       = "tfstate"
    key                  = "k8.tfstate"
    access_key = {}
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.0.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = true
  version = "=2.0.0"
  features {}
}
