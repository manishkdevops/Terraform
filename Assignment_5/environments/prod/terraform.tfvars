resource_grp = {
    rg1 = {
      name       = "army_prod"
      location   = "westus"
      managed_by = "manish"
    }
    rg2 = {
      name       = "navy_prod"
      location   = "eastus"
      managed_by = "india"
    }
  }

virtual_net = {
    vnet1 = {
      name                = "army_vnet_prod"
      location            = "westus"
      resource_group_name = "army_prod"
      address_space       = ["10.0.0.0/16"]
    }
  }

  subnets = {
    snet1 = {
      name                 = "army_subnet_prod"
      virtual_network_name = "army_vnet_prod"
      resource_group_name  = "army_prod"
      address_prefixes     = ["10.0.1.0/24"]
    }

    snet2 = {
      name                 = "navy_subnet_prod"
      virtual_network_name = "army_vnet_prod"
      resource_group_name  = "army_prod"
      address_prefixes     = ["10.0.2.0/24"]
    }
  }
