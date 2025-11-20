variable "rgs" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
}


variable "vnet" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
    tags     = map(string)
  }))
}


variable "subnet" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}


variable "publicip" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}


