# Process Injection: Thread Local Storage

- Malicious TLS Callback
- https://www.mandiant.com/resources/blog/newly-observed-ursnif-variant-employs-malicious-tls-callback-technique-achieve-process-injection
- https://www.picussecurity.com/resource/blog/picus-10-critical-mitre-attck-techniques-t1055-process-injection
- https://github.com/austinsonger/Incident-Playbook/blob/main/Playbooks/MITRE-ATTACK/Defense%20Evasion/T1055-Process-Injection.md
- https://www.picussecurity.com/resource/t1055-process-injection-of-the-mitre-attck-framework
- https://attack.mitre.org/techniques/T1055/005/

    * Windows API calls such as CreateRemoteThread
    * As another example, Ursnif/Gozi-ISFB malware manipulated TLS callbacks while injecting the child process
- References:
     * https://dmcxblue.gitbook.io/red-team-notes-2-0/red-team-techniques/defense-evasion/t1055-process-injection/thread-local-storage
     * https://github.com/MahmoudZohdy/Process-Injection-Techniques
     * https://www.youtube.com/watch?v=CwglaQRejio
