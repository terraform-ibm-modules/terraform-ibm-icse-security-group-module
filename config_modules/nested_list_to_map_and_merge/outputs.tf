##############################################################################
# Outputs
##############################################################################

output "value" {
  description = "Map with merged keys"
  value = {
    for child_key in keys(module.list_to_map.value) :
    child_key => merge(
      module.list_to_map.value[child_key],
      module.parent_merge_list_to_map.value[child_key]
    )
  }
}

##############################################################################
