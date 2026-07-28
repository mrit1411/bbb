######## Module Call for creating Windows Maintenance Configurations for N patching #########

module "windows_maintenance_configuration_n" {
  source               = "./modules/maintenance_configuration"
  tags                 = var.tags
  for_each             = var.windows_maintenance_configs_n
  location             = each.value.location
  resource_group_name  = var.resource_group_name
  name                 = each.value.name
  #reboot               = each.value.reboot
  recur_every          = each.value.recur_every
  time_zone = each.value.time_zone
  start_date_time      = each.value.start_date_time
  #expiration_date_time = each.value.expiration_date_time
  #classifications_windows   = each.value.classifications_windows
  #tags = var.tags
  #kb_numbers_windows = each.value.kb_numbers_windows
  is_reference         = each.value.is_reference
}

######### Module Call for creating Automation Account and Runbook for Patching #########

module "automation_runbook" {
  source                           = "./modules/automation_patching"
  patching_automation_account_name = var.patching_automation_account_name
  resource_group_name              = var.resource_group_name
  location                         = var.location
  patching_event_identity          = var.patching_event_identity
  tags                             = var.tags
}


######### Module Call for creating Event Grid System Topics and Event Subscriptions for Maintenance Pre Events for N patching #########

module "maintenance_pre_events_n" {
  source              = "./modules/maintenance_pre_events"
  maintenance_configs = local.maintenance_configurations_n
  webhook_uri         = module.automation_runbook.webhook_uri
  tags               = var.tags
}
