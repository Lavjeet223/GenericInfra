rgs = {
  rg1 = {
    name     = "rg-uk-dev-todoapp-01"
    location = "centralindia"
    tags = {
      environment = "dev"
    }
  }
}


vnet = {
  vnet1 = {
    name                = "vnet-uk-dev-todoapp-01"
    resource_group_name = "rg-uk-dev-todoapp-01"
    location            = "centralindia"
    address_space       = ["10.1.0.0/16"]
    tags = {
      environment = "dev"
    }
  }

}



subnet = {
  subnet1 = {
    name                 = "subnet-uk-dev-todoapp-01"
    resource_group_name  = "rg-uk-dev-todoapp-01"
    virtual_network_name = "vnet-uk-dev-todoapp-01"
    address_prefixes     = ["10.1.1.0/24"]
  }

}


publicip = {
  public1 = {
    name                = "publicip-uk-dev-todoapp-01"
    resource_group_name = "rg-uk-dev-todoapp-01"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}




