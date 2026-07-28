variable "m" {}

resource "azurerm_resource_group" "example" {
  for_each   = var.m
  name       = each.value.name
  location   = each.value.location
  managed_by = each.value.managed_by
}


resource "azurerm_virtual_network" "example" {
  name                = "my-network"
  location            = azurerm_resource_group.rgbp.location
  resource_group_name = azurerm_resource_group.rgbp.name
  address_space       = ["11.0.0.0/16"]

}

resource "azurerm_subnet" "example" {
  name                 = "subnet3"
  resource_group_name  = azurerm_resource_group.rgbp.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["11.0.3.0/24"]
}

