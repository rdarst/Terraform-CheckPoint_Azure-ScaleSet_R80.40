resource "azurerm_network_interface" "win_server_nic" {
    name                = "win_server_nic"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    enable_ip_forwarding = "false"
    ip_configuration {
        name                          = "WinServerNicConfiguration"
        subnet_id                     = azurerm_subnet.DMZ1_subnet.id
        private_ip_address_allocation = "Static"
        private_ip_address = "10.99.11.4"
    }
}

resource "azurerm_virtual_machine" "win_server" {
  name                  = "winserver"
  location              = "eastus"
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.win_server_nic.id]
  vm_size               = "Standard_B2s"

  storage_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "Windows-10"
    sku       = "19h2-pro"
    version   = "latest"
  }

  storage_os_disk {
    name              = "server-os"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name      = "winservertest"
    admin_username     = "azureuser"
    admin_password     = "Cpwins1!"

  }

  os_profile_windows_config {
  }

}
