$password = "nigmaz76$" | ConvertTo-SecureString -asPlainText -Force
$username = "debug\administrator"
$credential = New-Object System.Management.Automation.PSCredential($username, $password)
Invoke-WmiMethod -Class Win32_Process -Name Create -ArgumentList 'calc.exe -Command "Get-Process"' -ComputerName "192.168.137.145" -Credential $credential
