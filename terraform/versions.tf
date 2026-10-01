terraform {
  required_version = ">= 1.7.0"

  backend "azurerm" {
    resource_group_name  = "koalatech-week08-rg"
    storage_account_name = "avinashsit722w08stg0210"
    container_name       = "tfstate"
    key                  = "koalatech-week08.tfstate"
    use_azuread_auth     = true
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "azurerm" {
  features {}
}