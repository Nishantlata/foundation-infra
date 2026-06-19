rg_name = ["rg-web-dev-axion"]


vnet_name = {
  "vnet-axion" = {
    vnet_name     = "vnet-web-dev-axion"
    address_space = ["10.0.0.0/16"]
    vnet_location = "eastus"
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
    pip_location          = "eastus"
    pip_allocation_method = "Static"
  }
}