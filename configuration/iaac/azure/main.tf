terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-shell-storage-southcentralus"
    storage_account_name = "cs710037ffeaa055e81"
    container_name       = "tfstatefile"
    key                  = "k8.tfstate"
    access_key = "IBM//6TP2gyjVqtNxTut2U6wDiPD1WyymU8OalC+tnw9pz6fCb7Yh5ENAIU2v0RLhpqRNskgiLUCkXXlSKVajw=="
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
