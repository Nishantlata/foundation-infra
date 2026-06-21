resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = var.rg_location
  resource_group_name = var.rg_name

  security_rule {
    name                       = var.nsg_rule_name
    priority                   = var.nsg_priority
    direction                  = var.nsg_direction
    access                     = var.nsg_access
    protocol                   = var.nsg_protocol
    source_port_range          = var.nsg_source_port_range
    destination_port_range     = var.nsg_destination_port_range
    source_address_prefix      = var.source_address_prefix
    destination_address_prefix = var.destination_address_prefix

  }

  tags = var.comman_tags
}

