$password = "nigmaz76$" | ConvertTo-SecureString -asPlainText -Force
$username = "debug\administrator"
$credential = New-Object System.Management.Automation.PSCredential($username, $password)
$processName = "calc.exe"
$command = "Get-Process"

# Tạo đối tượng Win32_ProcessStartup để cấu hình chạy ẩn
$processStartup = (Get-WmiObject -List -Namespace "root\cimv2" -Class Win32_ProcessStartup).CreateInstance()
$processStartup.ShowWindow = 1  # 0: Ẩn tiến trình, 1: Hiển thị tiến trình

# Tạo đối tượng Win32_Process để chạy tiến trình
$processClass = Get-WmiObject -List -Namespace "root\cimv2" -Class Win32_Process
$process = $processClass.CreateInstance()
$null = $process.InvokeMethod("Create", $processName, $null, $processStartup)

# Đợi 1 giây để chắc chắn tiến trình đã khởi động
Start-Sleep -Seconds 1

# Lấy danh sách tiến trình và hiển thị lên màn hình
Invoke-WmiMethod -Class Win32_Process -Name Create -ArgumentList "powershell.exe -Command '$command'" -ComputerName "192.168.137.145" -Credential $credential
