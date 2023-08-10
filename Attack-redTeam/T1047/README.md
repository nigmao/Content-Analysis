# Windows Management Instrumentation

- https://learn.microsoft.com/en-us/windows/win32/wmisdk/connecting-to-wmi-on-a-remote-computer
- https://learn.microsoft.com/en-us/windows/win32/wmisdk/connecting-to-wmi-remotely-starting-with-vista
- Thao tác GUI để add debug\Administrator

```
Component Services
user Debug\Administrator 
add 2 option 

windows + R
wmimgmt.msc => Security
add user Debug\Administrator
```

## [0] CLIENTS
```powershell 
PS C:\Users\trant> nmap 192.168.137.145 -p 135
Starting Nmap 7.94 ( https://nmap.org ) at 2023-08-07 12:49 SE Asia Standard Time
Nmap scan report for 192.168.137.145
Host is up (0.0010s latency).

PORT    STATE    SERVICE
135/tcp filtered msrpc
MAC Address: 00:0C:29:A6:DF:DF (VMware)

Nmap done: 1 IP address (1 host up) scanned in 13.43 seconds
PS C:\Users\trant>
```

- [1] [Bật mạng thành private](https://vitinhquan7.info/cach-thay-doi-mang-cong-cong-thanh-mang-rieng/)
```
Get-NetConnectionProfile
set NetworkCategory          : Private
```

- [2] `Enable-PSRemoting -Force`
- `winrm quickconfig` start winrm in clients
- [3] set AllowUnencrypted true
```powershell
winrm get winrm/config/client
$Set-Item WSMan:\localhost\Client\AllowUnencrypted -Value $true
$Set-Item WSMan:\localhost\Service\AllowUnencrypted -Value $true
```
- [4] WMI nhận máy server là legit
```
Set-Item WSMan:\localhost\Client\TrustedHosts -Value "192.168.137.145" -Concatenate -Force
```
## [1] SERVER 
` [1] Run WMIC in windows server 2019
```
Set-Service -Name winrm -StartupType Automatic
Start-Service winrm
```

- [2] Đoạn allow firewall này nên xem thêm
```
Get-Service -Name RpcSs
Start-Service -Name RpcSs
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
Set-NetFirewallRule -Name WINRM-HTTP-In-TCP-PUBLIC -RemoteAddress Any
Set-NetFirewallRule -Name WINRM-HTTP-In-TCP-PRIVATE -RemoteAddress Any
```

- [3] Allow PS remote
```
Enable-PSRemoting -Force
```

- [4] AllowUnencrypted
```
winrm get winrm/config/service
Set-Item WSMan:\localhost\Service\AllowUnencrypted -Value $true
```

## [2] POWERSHELL SCRIPT:
- Local test
```
wmic /node:"127.0.0.1" process call create "calc.exe"
```
- Remote test
```
Invoke-WmiMethod -Class Win32_Process -Name Create -ArgumentList 'calc.exe' -ComputerName <ip-server> -Credential 'debug\Administrator' 
```




