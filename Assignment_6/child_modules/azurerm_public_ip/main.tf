resource "azurerm_public_ip" "pub_ip" {
  for_each            = var.pips
  name                = each.value.name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  allocation_method   = each.value.allot_method
}