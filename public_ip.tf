# Create Public IP for Load Balancer
resource "azurerm_public_ip" "albvip1" {
  name                         = "albvip1"
  sku                          = "Standard"
  location                     = azurerm_resource_group.rg.location
  resource_group_name          = azurerm_resource_group.rg.name
  allocation_method            = "Static"
  #domain_name_label            = azurerm_resource_group.rg.name
}

# Create Public IP for JumpHost
resource "azurerm_public_ip" "jumphostvip" {
  name                         = "jumphostvip1"
  sku                          = "basic"
  location                     = azurerm_resource_group.rg.location
  resource_group_name          = azurerm_resource_group.rg.name
  allocation_method            = "Dynamic"
  #domain_name_label           = azurerm_resource_group.rg.name
}