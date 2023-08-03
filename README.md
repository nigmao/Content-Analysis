# Content-Analysis

- Mitre and ATT&CK
- Sysmonlog
  * [setup filed in event-viewer config.xml](https://rootdse.org/posts/understanding-sysmon-events/#event-id-10-processaccess')
  * Threat Hunting with sysmon and collecting, analyzing and sending logs to:
            + 1. SIEM
	    + 2. Workstation logs (Linux or Windows)
  * Sysmon config - alert for:
	    + 1. Process creation: ID-1
	    + 2. Network connection: ID-3 (Only UDP/TCP)
	    + 3. DLL Loaded: ID-7
	    + 4. Process Hollowing: ID-8
	    + 5. Process Access: ID-10
	    + 6. File Created ID-11
	    + 7. Registry Key ID-12/13/14
	    + 8. Alternate Data streams ID-15
	    + 9. DNS Events ID-22
  
- Windows Logs
  * Event Viewer: view powershell logs script
     + https://learn.microsoft.com/en-us/powershell/scripting/windows-powershell/wmf/whats-new/script-logging?view=powershell-7.3
     + https://www.techtarget.com/searchwindowsserver/tutorial/Set-up-PowerShell-script-block-logging-for-added-security
- Event ID:
  * process creation event id: 4688

- Knowledge
  * MITRE ATT&CK Fundamentals, Sysmon Log Basic, Windows Event Log.
 * mimikats 
