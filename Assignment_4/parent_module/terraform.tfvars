resource_grp = {
    rg1 = {
      name       = "army"
      location   = "westus"
      managed_by = "manish"
    }
    rg2 = {
      name       = "navy"
      location   = "eastus"
      managed_by = "india"
    }
  }

virtual_net = {
    vnet1 = {
      name                = "army_vnet"
      location            = "westus"
      resource_group_name = "army"
      address_space       = ["10.0.0.0/16"]
    }
  }

  subnets = {
    snet1 = {
      name                 = "army_subnet"
      virtual_network_name = "army_vnet"
      resource_group_name  = "army"
      address_prefixes     = ["10.0.1.0/24"]
    }

    snet2 = {
      name                 = "navy_subnet"
      virtual_network_name = "army_vnet"
      resource_group_name  = "army"
      address_prefixes     = ["10.0.2.0/24"]
    }
  }
