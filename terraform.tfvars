resource_group_name     = "MES-UAT-RG3"
resource_group_location = "East US"
subscription_id = "edd8e9bb-437a-457e-af2d-66f4db2fe514"

vnets = {
  vnet1 = {
    name          = "vnet-dev-east"
    address_space = ["10.0.0.0/16"]
  },
  vnet2 = {
    name          = "vnet-dev-west"
    address_space = ["10.1.0.0/16"]
  },
  vnet3 = {
    name          = "vnet-dev-north"
    address_space = ["10.2.0.0/16"]
  }
}

environment = "dev"

