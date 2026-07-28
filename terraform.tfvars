tags = {
  "ccs_managed" = "yes"
}

location            = "canadacentral"
resource_group_name = "Barts-Patching-Test"


patching_event_identity = ["/subscriptions/63efd7f0-f279-403a-acf5-666ed15b72ab/resourceGroups/Barts-Patching-Test/providers/Microsoft.ManagedIdentity/userAssignedIdentities/barts-ccs-test"]


patching_automation_account_name = "PatchingAutomationRunbook"

######## Inputs for creating Maintenance Configurations and respective resources for Windows N patching###################

windows_maintenance_configs_n = {
  "BHCCSMCPWK1G1SCH1" = {
    name                 = "BHCCSMCPWK1G1SCH1"
    location             = "uksouth"
    recur_every          = "1Month First Wednesday"
    time_zone            = "GMT Standard Time" # UK timezone (handles BST/GMT)
    start_date_time      = "2027-07-01 12:00"  # UK time
    expiration_date_time = "2099-06-03 16:00"  # UK time
    is_reference         = true
  }

}



######## Inputs for creating Maintenance Configurations and respective resources for Linux patching###################
/*
#linux_maintenance_configs = {

#"CL-CI-azlcl-lin-mc01" = {
    name                 = "CL-CI-azlcl-lin-mc01"
    location             = "westeurope"
    recur_every          = "1Day"
    time_zone            = "Central Europe Standard Time" // "Central Europe Standard Time"
    start_date_time      = "2027-05-26 02:00" //yyyy-mm-dd hh:mm
    expiration_date_time = "2027-05-26 06:00"
#}

#"CL-CI-azlcl-lin-mc02" = {
    name                 = "CL-CI-azlcl-lin-mc02"
    location             = "westeurope"
    recur_every          = "1Day"
    time_zone            = "Central Europe Standard Time" // "Central Europe Standard Time"
    start_date_time      = "2027-05-28 10:30" //yyyy-mm-dd hh:mm
    expiration_date_time = "2027-05-28 13:30"
#}


#}
*/

######## List of all subscriptions in Barts Environment####################

sub_names = {
  sub1 = {
    subname = "BH-EA-Microsoft Azure Enterprise"
    subid   = "6fe37cb9-7f53-4d7c-b667-8fa05106c6ec"
  }
}