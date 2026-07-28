terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.74.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "website"
    storage_account_name = "webstgacntname"                  
    container_name       = "bluecontainer"                   
    key                  = "bluecontainer.terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}