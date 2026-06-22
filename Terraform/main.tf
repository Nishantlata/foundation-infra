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

module "nsg" {
  source = "./modules/nsg"

  for_each = var.nsg_name

  depends_on = [module.resource_group]

  nsg_name                   = each.value.nsg_name
  rg_name                    = each.value.rg_name
  rg_location                = local.location
  nsg_rule_name              = each.value.nsg_rule_name
  nsg_priority               = each.value.nsg_priority
  nsg_direction              = each.value.nsg_direction
  nsg_access                 = each.value.nsg_access
  nsg_protocol               = each.value.nsg_protocol
  nsg_source_port_range      = each.value.nsg_source_port_range
  nsg_destination_port_range = each.value.nsg_destination_port_range
  source_address_prefix      = each.value.source_address_prefix
  destination_address_prefix = each.value.destination_address_prefix
  comman_tags                = local.comman_tags
}

module "nsg_association" {
  source = "./modules/nsg_association"

  for_each = var.nsg_association

  subnet_id = module.subnet[each.value.subnet_id].subnet_id
  nsg_id = module.nsg[each.value.nsg_id].nsg_id

}

module "app_service_plan" {
  source = "./modules/app_service_plan"

  for_each = var.app_service_plans

  depends_on = [module.resource_group]

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  os_type             = each.value.os_type
  sku_name            = each.value.sku_name
}

module "app_service" {
  source = "./modules/app_service"

  for_each = var.app_services

  depends_on = [module.app_service_plan]

  app_service_name      = each.value.app_service_name
  rg_location           = local.location
  rg_name               = each.value.rg_name
  app_service_plan_id = module.app_service_plan[each.value.app_service_plan_key].app_service_plan_id
}