terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}
# This block goes outside of the required_providers block!
provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}