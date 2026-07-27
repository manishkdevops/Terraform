resource "azurerm_subnet" "snet" {
  for_each             = var.subnt
  name                 = each.value.name
  resource_group_name  = each.value.rg_name
  virtual_network_name = each.value.vnet_name
  address_prefixes     = each.value.addr_prefixes
}