# # Create the connection to the cloud provider you're using and setup the backend for the terraform state.
# # Recommend dynamically configuring backend attributes in the actions pipeline yml instead of hardcoding
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}
