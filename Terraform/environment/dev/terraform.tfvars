rg_name = ["rg-web-dev-axion"]


vnet_name = {
  "vnet-dev-axion" = {
    vnet_name     = "vnet-web-dev-axion"
    address_space = ["10.0.0.0/16"]
    vnet_location = "South India"
    rg_name       = "rg-web-dev-axion"
    vnet_tags = {
      environment = "dev"
      project     = "axion"
    }
  }
}

subnet_name = {
  "subnet-axion" = {
    subnet_name      = "subnet-web-dev-axion"
    rg_name          = "rg-web-dev-axion"
    vnet_name        = "vnet-web-dev-axion"
    address_prefixes = ["10.0.1.0/24"]
  }
}

pip_name = {
  "pip-axion" = {
    pip_name              = "pip-web-dev-axion"
    rg_name               = "rg-web-dev-axion"
    pip_location          = "South India"
    pip_allocation_method = "Static"
  }
}

nsg_name = {
  "nsg-axion" = {
    nsg_name     = "nsg-web-dev-axion"
    rg_name      = "rg-web-dev-axion"
    nsg_location = "South India"

    nsg_tags = {
      environment = "dev"
      project     = "axion"
    }

    nsg_rule_name              = "Allow-HTTPS"
    nsg_priority               = 110
    nsg_direction              = "Inbound"
    nsg_access                 = "Allow"
    nsg_protocol               = "Tcp"
    nsg_source_port_range      = "*"
    nsg_destination_port_range = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
nsg_association = {
  "nsg-association-axion" = {
    subnet_id = "subnet-axion"
    nsg_id    = "nsg-axion"
  }
}

app_service_plans = {
  "asp-axion" = {
    name                = "asp-web-dev-axion"
    location            = "South India"
    resource_group_name = "rg-web-dev-axion"
    os_type             = "Linux"
    sku_name            = "B1"
  }
}