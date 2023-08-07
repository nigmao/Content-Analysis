# Content-Analysis
- **NOTE:**
   * [Learn sysinternal](https://www.youtube.com/watch?v=fCp2usRXmGg) .
   * [PowerShell Script to Connect Multiple Server's Remote Session](https://www.youtube.com/watch?v=zaSxFqLTf0s&t=124s) .
   * https://www.nextron-systems.com/2018/02/10/write-sigma-rules/
   * https://detection.fyi/sigmahq/sigma/windows/process_creation/proc_creation_win_wmic_uninstall_application/?query=t1047
   * https://redcanary.com/threat-detection-report/techniques/windows-management-instrumentation/
   * https://learn.microsoft.com/en-us/windows/win32/wmisdk/connecting-to-wmi-on-a-remote-computer
   * https://learn.microsoft.com/en-us/windows/win32/wmisdk/connecting-to-wmi-remotely-starting-with-vista
## [0] EventLogs
- Sysmonlog
  * [setup filed in event-viewer config.xml](https://rootdse.org/posts/understanding-sysmon-events/#event-id-10-processaccess')
  * https://learn.microsoft.com/en-us/sysinternals/downloads/sysmon
  ```powershell
  sysmon -accepteula -i sysmonconfig-export.xml
  ```
  * Threat Hunting with sysmon and collecting, analyzing and sending logs to:
    + 1. SIEM
    + 2. Workstation logs (Linux or Windows)
  * Sysmon config - ID logs:
    + 1. Process creation: ID-1
    + 2. Network connection: ID-3 (Only UDP/TCP)
    + 3. DLL Loaded: ID-7
    + 4. Process Hollowing: ID-8
    + 5. Process Access: ID-10
    + 6. File Created ID-11
    + 7. Registry Key ID-12/13/14
    + 8. Alternate Data streams ID-15
    + 9. DNS Events ID-22
  
- Windows EventLogs:
  * Event Viewer: view powershell logs script
     + https://learn.microsoft.com/en-us/powershell/scripting/windows-powershell/wmf/whats-new/script-logging?view=powershell-7.3
     + https://www.techtarget.com/searchwindowsserver/tutorial/Set-up-PowerShell-script-block-logging-for-added-security

## [1] Knowledge:
- MITRE ATT&CK Fundamentals, Sysmon Log Basic, Windows Event Log.
- Powershell learn
   * https://learn.microsoft.com/en-us/training/modules/script-with-powershell/2-introduction-scripting
   * PowerShell default disable run script `Set-ExecutionPolicy Unrestricted` . 
     + Restricted: No Powershell scripts can be run. This is the default setting. 
     + AllSigned: Scripts can be run, but all must have a digital signature. Even if you wrote the script yourself on the local computer. 
     + RemoteSigned: Locally-written scripts can be run. But scripts from outside (email, IM, Internet) must be signed by a trusted publisher. 
     + Unrestricted: Any script will run. Regardless of who created them or whether they are signed.
- ...
