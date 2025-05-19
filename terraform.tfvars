resource_group_name     = "MES-DEV-RG"
location                = "East US"
storage_account_name   = "mystorageac9849054345" # must be globally unique, lowercase, 3–24 chars
account_tier           = "Standard"
replication_type       = "LRS"
environment            = "dev"
subscription_id = "edd8e9bb-437a-457e-af2d-66f4db2fe514"

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
   {
    name           = "subnet-webapp"
    address_prefix = "10.0.4.0/24"
  }
]
