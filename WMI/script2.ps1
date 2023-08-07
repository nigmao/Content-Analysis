$credential = Get-Credential
Get-WmiObject Win32_Process -Filter "ProcessId = 3228" -ComputerName "192.168.137.145" -Credential $credential | Select-Object Name, ProcessId, CommandLine
