resource "azurerm_route_table" "DMZ1RT" {
  name                = "DMZ1RT"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  route {
    name           = "internal"
    address_prefix = "10.99.0.0/16"
    next_hop_type  = "vnetlocal"
  }
  route {
    name           = "Internet"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.1.10"
  }
  route {
    name           = "OnPrem2"
    address_prefix = "10.2.0.0/16"
    next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.1.10"
  }
  route {
    name           = "OnPrem5"
    address_prefix = "10.5.0.0/16"
    next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.1.10"
  }
  }

  resource "azurerm_route_table" "DMZ2RT" {
  name                = "DMZ2RT"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  route {
    name           = "DMZ1"
    address_prefix = "10.99.11.0/24"
    next_hop_type  = "vnetlocal"
  }
  route {
    name           = "DMZ3"
    address_prefix = "10.99.13.0/24"
    next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.1.10"
  }
  route {
    name           = "DMZ2"
    address_prefix = "10.99.12.0/24"
    next_hop_type  = "vnetlocal"
  }
  route {
    name           = "OnPrem"
    address_prefix = "10.2.0.0/16"
     next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.1.10"
  }
  route {
    name           = "Internet"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.1.10"
  }
  route {
    name           = "OnPrem5"
    address_prefix = "10.5.0.0/16"
    next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.1.10"
  }
  }

  resource "azurerm_route_table" "DMZ3RT" {
  name                = "DMZ3RT"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  route {
    name           = "DMZ1"
    address_prefix = "10.99.11.0/24"
     next_hop_type  = "vnetlocal"
  }
  route {
    name           = "DMZ2"
    address_prefix = "10.99.12.0/24"
    next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.1.10"
  }
  route {
    name           = "DMZ3"
    address_prefix = "10.99.13.0/24"
    next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.1.10"
  }
  route {
    name           = "OnPrem"
    address_prefix = "10.2.0.0/16"
    next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.1.10"
  }
  route {
    name           = "Internet"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.1.10"
  }
  route {
    name           = "OnPrem5"
    address_prefix = "10.5.0.0/16"
    next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.1.10"
  }
  }

  resource "azurerm_route_table" "GWRT" {
  name                = "GWRT"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  route {
    name           = "DMZ1"
    address_prefix = "10.99.11.0/24"
    next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.0.10"
  }
  route {
    name           = "DMZ2"
    address_prefix = "10.99.12.0/24"
    next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.0.10"
  }
  route {
    name           = "DMZ3"
    address_prefix = "10.99.13.0/24"
    next_hop_type  = "VirtualAppliance"
	next_hop_in_ip_address = "10.99.0.10"
  }

  }