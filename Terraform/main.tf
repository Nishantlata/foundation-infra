module "resource_group" {
  source = "./modules/resource_group"

  for_each = var.rg_name

  rg_name     = each.value
  rg_location = local.location
  rg_tags     = local.comman_tags
}


module "vnet" {
  source = "./modules/vnet"

  for_each = var.vnet_name

  depends_on = [module.resource_group]

  vnet_name          = each.value.vnet_name
  vnet_address_space = each.value.address_space
  vnet_location      = local.location
  rg_name            = each.value.rg_name
  comman_tags        = local.comman_tags
}

module "subnet" {
  source = "./modules/subnet"

  for_each = var.subnet_name

  depends_on = [module.vnet]

  subnet_name      = each.value.subnet_name
  rg_name          = each.value.rg_name
  vnet_name        = each.value.vnet_name
  address_prefixes = each.value.address_prefixes
}

module "pip" {
  source = "./modules/pip"

  for_each = var.pip_name

  depends_on = [module.resource_group]

  pip_name              = each.value.pip_name
  rg_name               = each.value.rg_name
  pip_location          = each.value.pip_location
  pip_allocation_method = each.value.pip_allocation_method
  comman_tags           = local.comman_tags
}
