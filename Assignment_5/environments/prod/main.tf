module "rsg" {
  source = "../../child_modules/azurerm_resource_group"
  x = var.resource_grp
}

module "virtnet" {
  depends_on = [module.rsg]
  source     = "../../child_modules/azurerm_virtual_network"
  y = var.virtual_net
}

module "subnet" {
  depends_on = [module.virtnet]
  source     = "../../child_modules/azurerm_subnet"
  z = var.subnets
}