# WMI


## CLIENTS
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

- `Get-NetConnectionProfile`
```
set NetworkCategory          : Private
```
- [Bật mạng thành private](https://vitinhquan7.info/cach-thay-doi-mang-cong-cong-thanh-mang-rieng/)

- `Enable-PSRemoting -Force`
- `winrm quickconfig` start winrm in clients
- set AllowUnencrypted true
```powershell 
$Set-Item WSMan:\localhost\Client\AllowUnencrypted -Value $true
$Set-Item WSMan:\localhost\Service\AllowUnencrypted -Value $true
```

## SERVER 
` [1] Run WMIC in windows server 2019
```
Set-Service -Name winrm -StartupType Automatic
Start-Service winrm
```

- [2] Đoạn allow firewall này nên xem thêm
```
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

- script:
```
$credential = Get-Credential  # Nhập thông tin đăng nhập của tài khoản trên máy chủ Windows Server 2019
Invoke-WmiMethod -Class Win32_Process -Name Create -ArgumentList 'powershell.exe -Command "Get-Process"' -ComputerName "IP_HOAC_TEN_MAY_CHU" -Credential $credential
```
