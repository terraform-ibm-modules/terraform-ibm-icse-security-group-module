##############################################################################
# VPC Variables
##############################################################################

variable "vpc_id" {
  description = "ID of the VPC where public gateways will be created"
  type        = string
  default     = null
}

variable "prefix" {
  description = "The prefix that you would like to append to your resources"
  type        = string
  default     = "icse"
}

variable "resource_group_id" {
  description = "ID of the resource group where gateways will be provisioned"
  type        = string
  default     = null
}

variable "tags" {
  description = "List of Tags for the resource created"
  type        = list(string)
  default     = null
}

##############################################################################

##############################################################################
# Security Group Variables
##############################################################################

variable "security_groups" {
  description = "Security groups for VPC"
  type = list(
    object({
      name = string
      rules = list(
        object({
          name      = string
          direction = string
          remote    = string
          tcp = optional(
            object({
              port_max = number
              port_min = number
            })
          )
          udp = optional(
            object({
              port_max = number
              port_min = number
            })
          )
          icmp = optional(
            object({
              type = number
              code = number
            })
          )
        })
      )
    })
  )

  default = [
    {
      name = "test-group"
      rules = [
        {
          name      = "allow-ssh"
          direction = "inbound"
          remote    = "0.0.0.0/0"
          tcp = {
            port_max = 22
            port_min = 22
          }
        }
      ]
    }
  ]

  validation {
    error_message = "Each security group rule must have a unique name."
    condition = length(var.security_groups) == 0 ? true : length([
      for security_group in var.security_groups :
      true if length(distinct([
        for rule in security_group.rules :
        rule.name
        ])) != length([
        for rule in security_group.rules :
        rule.name
      ])
    ]) == 0
  }

  validation {
    error_message = "Security group rule direction can only be `inbound` or `outbound`."
    condition = length(var.security_groups) == 0 ? true : length(
      [
        for group in var.security_groups :
        true if length(
          distinct(
            flatten([
              for rule in group.rules :
              false if !contains(["inbound", "outbound"], rule.direction)
            ])
          )
        ) != 0
      ]
    ) == 0
  }

}

##############################################################################
