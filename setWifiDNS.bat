@REM netsh interface ipv4 set dns name="Wifi 2" dynamic primary
@REM netsh interface ipv4 add dns name="Wifi 2" dynamic index=2
@REM netsh interface set interface "Wifi 2" admin=disable
@REM netsh interface set interface "Wifi 2" admin=enable


@echo off
setlocal

:: Get the index of the WiFi network interface
for /f "tokens=2 delims=: " %%a in ('wmic nic where "NetEnabled=true and NetConnectionID like 'WiFi%' and NetConnectionStatus=2" get Index /value') do set "wifi_index=%%a")

:: Set the DNS servers to automatic
netsh interface ipv4 set dnsservers "%wifi_index%" source=dhcp
netsh interface ipv6 set dnsservers "%wifi_index%" source=dhcp

endlocal