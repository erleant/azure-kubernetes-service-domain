provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "acr" {
  name     = "rgContainerRegistry"
  location = "west europe"
}

resource "azurerm_container_registry" "acr" {
  name                = "train2middle"
  resource_group_name = azurerm_resource_group.acr.name
  location            = azurerm_resource_group.acr.location
  admin_enabled       = true
  sku                 = "Standard"
}

