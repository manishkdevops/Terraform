#####ResourceGroup######
x = {
  rg1 = {
    name       = "army"
    location   = "japaneast"
    managed_by = "india"
  }

  rg2 = {
    name       = "navy"
    location   = "japanwest"
    managed_by = "manish"
  }

  rg3 = {
    name       = "airforce"
    location   = "japanwest"
    managed_by = "manish"
  }
  
    rg3 = {
    name       = "indian-airforce"
    location   = "japanwest"
    managed_by = "manish"
  }
}

#####Vnet######
y = {
  vnet1 = {
    name       = "army_vnet"
    rg_name    = "army"
    location   = "japaneast"
    addr_space = ["10.0.0.0/16"]
  }
  vnet2 = {
    name       = "navy_vnet"
    rg_name    = "army"
    location   = "japaneast"
    addr_space = ["10.1.0.0/16"]
  }
}

######SubNet######
z = {
  snet1 = {
    name          = "army_snet1"
    rg_name       = "army"
    vnet_name     = "army_vnet"
    addr_prefixes = ["10.0.0.0/24"]
  }

  snet2 = {
    name          = "army_snet2"
    rg_name       = "army"
    vnet_name     = "army_vnet"
    addr_prefixes = ["10.0.1.0/24"]
  }
}

#######PIP########
a = {
  pip1 = {
    name         = "pip1anything"
    rg_name      = "army"
    location     = "japaneast"
    allot_method = "Static"
  }

  pip2 = {
    name         = "pip2anything"
    rg_name      = "army"
    location     = "japaneast"
    allot_method = "Static"
  }
}

########NIC#######

b = {
  nic1 = {
    nic_name           = "army_nic1"
    location           = "japaneast"
    rg_name            = "army"
    subnet_name        = "army_snet1"
    vnet_name          = "army_vnet"
    pip_name           = "pip1anything"
    ip_config_name     = "DevOps"
    ip_config_ip_allot = "Dynamic"
  }

  nic2 = {
    nic_name           = "army_nic2"
    location           = "japaneast"
    rg_name            = "army"
    subnet_name        = "army_snet2"
    vnet_name          = "army_vnet"
    pip_name           = "pip2anything"
    ip_config_name     = "DevSecOps"
    ip_config_ip_allot = "Dynamic"
  }
}

#######VM#####
c = {
  vm1 = {
    vm_name  = "linux-vm1"
    location = "japaneast"
    rg_name  = "army"
    nic_name = "army_nic1"
    vm_size  = "Standard_D2s_v3"
    os_disk_name = "myosdisk1"  
    github_token = "ghp_1234567890abcdefghijklmnopqrstuvwxyzABCD"

  
  }

  vm2 = {
    vm_name  = "linux-vm2"
    location = "japaneast"
    rg_name  = "army"
    nic_name = "army_nic2"
    vm_size  = "Standard_D2s_v3"
    os_disk_name = "myosdisk2"
    github_token = "ghp_1234567890abcdefghijklmnopqrstuvwxyzABCD"


  }
}