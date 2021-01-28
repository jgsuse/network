resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_prefix
  #dns_servers         = var.dns_servers
  #tags                = var.tags
}
resource "azurerm_subnet" "subnet" {
  #count                = length(var.subnet_name) 
  name                 = var.subnet_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
  address_prefix       = var.subnet_address_space
}