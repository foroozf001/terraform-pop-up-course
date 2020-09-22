# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = var.app
  location = "West Europe"
}