
 locals {
    maintenance_configurations_n = {
    for k, m in module.windows_maintenance_configuration_n :
    k => {
      id                  = m.id
      name                = m.name
      location            = m.location
      resource_group_name = m.resource_group_name
    }
  }
    


 }