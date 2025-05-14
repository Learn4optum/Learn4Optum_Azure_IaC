resource_group_name     = "MES-UAT-RG1"
resource_group_location = "East US"
subscription_id = "edd8e9bb-437a-457e-af2d-66f4db2fe514"
vnet_name     = "mes-vnet"
address_space = ["10.0.0.0/16"]
dns_servers   = ["8.8.8.8", "8.8.4.4"]

subnet_name     = "mes-aks-subnet"
subnet_prefixes = ["10.0.1.0/24"]

environment = "dev"

