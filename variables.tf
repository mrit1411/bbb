variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the existing resource group"
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}




variable "windows_maintenance_configs_n" {
  description = "A mapping of variables required for N windows maintenance configuration"
  type = map(object({
    name                    = string
    location                = string
    reboot                  = optional(bool)
    start_date_time         = optional(string)
    expiration_date_time    = optional(string)
    recur_every             = string
    kb_numbers_windows      = optional(list(string))
    classifications_windows = optional(list(string))
    time_zone               = optional(string)
    is_reference         = optional(bool, false)
  }))
}


# variable "linux_maintenance_configs" {
#   description = "A mapping of variables required for linux maintenance configuration"
#   type = map(object({
#     name                    = string
#     location                = string
#     reboot                  = optional(bool)
#     start_date_time         = optional(string)
#     expiration_date_time    = optional(string)
#     recur_every             = string
#     kb_numbers_windows      = optional(list(string))
#     classifications_windows = optional(list(string))
#     time_zone               = optional(string)
#   }))
# }

variable "patching_event_identity" {
  description = "User Assigned Managed Identity ID for Automation Account"
  type        = list(string)
}

variable "patching_automation_account_name" {
  description = "Name of the Automation Account for Patching Pre-Maintenance Events"
  type        = string

}



variable "sub_names" {
  description = "A mapping of subscription names and IDs in Aptiv Environment"
  type = map(object({
    subname = string
    subid   = string
  }))
}

