resource_grp = {
    rg1 = {
      name       = "army_dev"
      location   = "westus"
      managed_by = "manish"
    }
    rg2 = {
      name       = "navy_dev"
      location   = "eastus"
      managed_by = "india"
    }
  }

virtual_net = {
    vnet1 = {
      name                = "army_vnet_dev"
      location            = "westus"
      resource_group_name = "army_dev"
      address_space       = ["10.0.0.0/16"]
    }
  }

  subnets = {
    snet1 = {
      name                 = "army_subnet_dev"
      virtual_network_name = "army_vnet_dev"
      resource_group_name  = "army_dev"
      address_prefixes     = ["10.0.1.0/24"]
    }

    snet2 = {
      name                 = "navy_subnet_dev"
      virtual_network_name = "army_vnet_dev"
      resource_group_name  = "army_dev"
      address_prefixes     = ["10.0.2.0/24"]
    }
  }
