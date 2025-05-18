resource_group_name     = "MES-UAT-RG"
location                = "East US"

vnet_name               = "vnet-uat"
vnet_address_space      = ["10.0.0.0/16"]

subnets = [
  {
    name           = "subnet-app"
    address_prefix = "10.0.1.0/24"
  },
  {
    name           = "subnet-db"
    address_prefix = "10.0.2.0/24"
  },
  {
    name           = "subnet-web"
    address_prefix = "10.0.3.0/24"
  }
]
