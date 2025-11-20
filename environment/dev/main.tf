module "resource_group" {
  source = "../../modules/resource_group"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [ module.resource_group ]
  source = "../../modules/networking"
  vnet   = var.vnet
  subnet = var.subnet
}

module "pip" {
  depends_on = [ module.resource_group ]
  source = "../../modules/public_ip"
  publicip = var.publicip
}

