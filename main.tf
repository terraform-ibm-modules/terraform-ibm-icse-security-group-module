##############################################################################
# Security Group Dynamic Values
##############################################################################

module "security_group_map" {
  source = "./config_modules/list_to_map"
  list = var.vpc_id == null ? [] : [
    for group in var.security_groups :
    merge(group, { vpc_id = var.vpc_id })
  ]
}

##############################################################################

##############################################################################
# Security Group
##############################################################################

resource "ibm_is_security_group" "security_group" {
  for_each       = module.security_group_map.value
  name           = "${var.prefix}-${each.value.name}"
  vpc            = each.value.vpc_id
  resource_group = var.resource_group_id
  tags           = var.tags
}

##############################################################################
