netsh interface ipv4 set dns name="Ethernet 3" static 192.168.2.25 primary
netsh interface ipv4 add dns name="Ethernet 3" addr=192.168.2.26 index=2
@REM netsh interface ipv6 set interface "Ethernet 3" routerdiscovery=disabled
netsh interface set interface "Ethernet 3" admin=disable
netsh interface set interface "Ethernet 3" admin=enable