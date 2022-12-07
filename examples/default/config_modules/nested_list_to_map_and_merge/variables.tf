##############################################################################
# Variables
##############################################################################

variable "list" {
  description = "List to get sub list from"
  type        = list(any)
}

variable "sub_list_name" {
  description = "Name of key for nested list inside list object"
  type        = string
}

variable "add_parent_fields_to_child" {
  description = "List of values to add to the child element on return"
  type = list(
    object({
      parent_field = string
      child_key    = string
      add_prefix   = optional(string)
    })
  )
}

variable "add_lookup_child_values" {
  description = "List of values to check for a child value"
  type = list(
    object({
      lookup_field_key_name = string
      lookup_field          = string
      parse_json_if_true    = string
    })
  )
  default = []
}

variable "key_name_field" {
  description = "Key inside each object to use as the map key"
  type        = string
  default     = "name"
}

variable "prepend_parent_key_value_to_child_name" {
  description = "Add a value from the parent object to the beginning of the key name"
  type        = string
  default     = null
}

##############################################################################
