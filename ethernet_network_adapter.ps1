Set-DnsClientServerAddress -InterfaceAlias "Ethernet 3" -ServerAddresses ("192.168.2.25", "192.168.2.26")
Disable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip6