variable "x" {}

resource "azurerm_resource_group" "rg" {
  for_each   = var.x
  name       = each.value.name
  location   = each.value.location
  managed_by = each.value.managed_by
  }