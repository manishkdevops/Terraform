module "rg" {
  source = "../child_modules/azurerm_resource_group"
  rgs    = var.x
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../child_modules/azurerm_virtual_network"
  vnets      = var.y
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../child_modules/azurerm_subnet"
  subnt      = var.z
}

module "pip" {
  depends_on = [module.rg]
  source     = "../child_modules/azurerm_public_ip"
  pips       = var.a
}

module "nic" {
  depends_on = [module.subnet, module.pip]
  source     = "../child_modules/azurerm_network_interface"
  nics       = var.b
}

module "vm" {
  depends_on = [module.nic]
  source     = "../child_modules/azurerm_virtual_machine"
  vms        = var.c
}