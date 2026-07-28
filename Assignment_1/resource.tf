resource "azurerm_resource_group" "rgbp" {
  name     = "website"
  location = "ukwest"
}

resource "azurerm_storage_account" "stg" {
  depends_on               = [azurerm_resource_group.rgbp]
  name                     = "webstgacntname"
  resource_group_name      = "website"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "cnt" {
  depends_on            = [azurerm_storage_account.stg]
  name                  = "bluecontainer"
  storage_account_id    = "/subscriptions/82d3dff2-2cf6-4e19-acac-54a089e83994/resourceGroups/website/providers/Microsoft.Storage/storageAccounts/webstgacntname"
  container_access_type = "private"
}

