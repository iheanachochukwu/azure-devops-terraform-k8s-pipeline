terraform {
  backend "azurerm" {
    resource_group_name  = "myResourceGroup"
    storage_account_name = "terraformsastore"
    container_name       = "tfstate"
    key                  = "k8.tfstate"
    access_key = "3Z39FcSFo607a94o5JD4e1S6/i0qj4/2SxtRaK9V4lCZThLoJWexwwAEdMG9i3cmP8YibD1o9K5Aqd7EwEBGqA=="
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
