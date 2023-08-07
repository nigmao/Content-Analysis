$credential = Get-Credential  # Nhập thông tin đăng nhập của tài khoản trên máy chủ Windows Server 2019
Invoke-WmiMethod -Class Win32_Process -Name Create -ArgumentList 'calc.exe -Command "Get-Process"' -ComputerName "192.168.137.145" -Credential $credential
