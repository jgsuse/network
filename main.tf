provider "azurerm" {
  features {}
}

module "Network"{
 source   ="./module"
 vnet_name                 = var.vnet_name
 location                  = var.location 
 resource_group_name       = var.resource_group_name
 vnet_address_prefix       = var.vnet_address_prefix
 #dns_servers              = var.dns_servers
 #tags                     = var.tags

 subnet_name               = var.subnet_name
 subnet_address_space      = var.subnet_address_space
}