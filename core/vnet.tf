# Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "${var.app}-vnet"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = ["10.0.0.0/16"]
}