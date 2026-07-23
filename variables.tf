variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}
variable "storage_account_name" {
  type = string
}
variable "account_tier" {
  type = string
}
variable "account_replication_type" {
  type = string
}
variable "account_kind" {
  type = string
}
variable "public_network_access_enabled" {
  type = bool
}
variable "allow_nested_items_to_be_public" {
  type = bool
}
variable "shared_access_key_enabled" {
  type = bool
}
variable "https_traffic_only_enabled" {
  type = bool
}
variable "min_tls_version" {
  type = string
}
variable "tags" {
  type = map(string)
}
variable "container_name" {
  type = string
}
variable "container_access_type" {
  type = string
}

# variable "virtual_network_name" {
#   type = string
# }
# variable "address_space" {
#   type = list(string)
# }
# variable "network_security_group_name" {
#   type = string
# }
# variable "subnets" {
#   type = map(object(
#     {
#       address_prefix = string
#     }
#     )
#   )
# }
# variable "security_rules" {
#   type = map(object({
#     priority                   = number
#     protocol                   = string
#     access                     = string
#     direction                  = string
#     source_port_range          = string
#     destination_port_range     = string
#     source_address_prefix      = string
#     destination_address_prefix = string
#   }))
# }