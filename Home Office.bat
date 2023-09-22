:: Disable Proxy
@Echo off
set "Key=HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
Set "Val=ProxyEnable"
Set "Typ=REG_DWORD"
Reg add "%Key%" /v %Val% /t %Typ% /d "0x0" /f