# Create or Modify System Process: Windows Service

- References:
  + https://drive.google.com/file/d/1rcu8VCZr3erZg_fBgMniqbGxXuJk138P/view?usp=sharing
  + https://attack.mitre.org/techniques/T1543/003/
  + https://github.com/SigmaHQ/sigma/blob/master/rules/windows/process_creation/proc_creation_win_sc_service_path_modification.yml
  + https://github.com/SigmaHQ/sigma/blob/master/rules/windows/process_creation/proc_creation_win_sc_create_service.yml
  + https://github.com/SigmaHQ/sigma/blob/master/rules/windows/process_creation/proc_creation_win_powershell_create_service.yml
  + https://github.com/SigmaHQ/sigma/tree/master/rules/windows/process_creation

- Code and compile program `Windows Service Application` - WannaCry.exe

- Create Service `(Administrator: Command Prompt)`
  * Create Service follow case attack WannaCry.
  ```powershell
  sc create "mssecsvc2.0" DisplayName= "Microsoft Security Center (2.0) Service" binPath= "C:\Users\nigmaz\source\repos\WannaCry\x64\Release\WannaCry.exe" start= "auto"
  ```
  * Start, stop, delete service
  ```powershell
  sc start mssecsvc2.0
  ```
  ```powershell
  sc stop mssecsvc2.0
  ```
  ```pơwershell
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
