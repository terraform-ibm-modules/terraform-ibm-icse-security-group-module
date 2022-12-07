##############################################################################
# Security Group Outputs
##############################################################################

output "groups" {
  description = "List of security group names and ids"
  value = [
    for group in ibm_is_security_group.security_group :
    {
      name = group.name
      id   = group.id
    }
  ]
}

##############################################################################
