$password = "nigmaz76$" | ConvertTo-SecureString -asPlainText -Force
$username = "debug\administrator"
$credential = New-Object System.Management.Automation.PSCredential($username, $password)
Get-WmiObject Win32_Process -Filter "ProcessId = 3228" -ComputerName "192.168.137.145" -Credential $credential | Select-Object Name, ProcessId, CommandLine
