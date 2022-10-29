terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-rg"
    storage_account_name = "tfstatedevops"
    container_name       = "tfstate"
    key                  = "terraformgithubexample.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "eastus"
  name = "my-demo-rg1"

  tags = {
    "environment" = "k8sdev"
    "environment1" = "k8sde2v"
  }

}
