terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.22.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    # azapi = {
    #   source  = "azure/azapi"
    #   version = "2.8.0"
    # }
  }
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"

  subscription_id = "63efd7f0-f279-403a-acf5-666ed15b72ab"
}

# provider "azapi" {
#   client_id     = var.appreg_id
#   client_secret = var.appreg_secret
#   tenant_id     = var.aztenant
# }

provider "azurerm" {
  alias = "sub1"
  features {}
  resource_provider_registrations = "none"



  subscription_id = "63efd7f0-f279-403a-acf5-666ed15b72ab"
}
