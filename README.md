# Linux Foundations for SOC Analysts

## Overview
This project demonstrates essential Linux investigation skills used in Security Operations Centers. It focuses on system navigation, file discovery, and command-line techniques that support endpoint triage and incident response. These fundamentals are required for analysing suspicious activity on Linux systems and understanding how attackers interact with the filesystem.

---

## Skills Demonstrated
- Identifying the active user and environment  
- Navigating the Linux filesystem  
- Listing and inspecting directory contents  
- Reading and analysing file contents  
- Searching for files by name or extension  
- Recursively searching for suspicious strings  
- Redirecting output for evidence collection  
- Running commands in the background  
- Chaining commands for efficient workflows  

---

## Practical Command Examples
A curated set of commands used during this project:

```
whoami                     # Identify current user
pwd                        # Show working directory
ls                         # List directory contents
cd /path                   # Navigate filesystem
cat file.txt               # Read file contents
find -name "*.txt"         # Locate files by extension
grep "value" file          # Search inside files
grep -r "value" /etc/      # Recursive search
command > output.txt       # Redirect output (overwrite)
command >> output.txt      # Redirect output (append)
command1 && command2       # Chain commands
command &                  # Run in background
```

---

## Mini Investigation Scenario
A fictional alert indicated suspicious file creation under `/home`.

To investigate:

1. **Enumerated the directory**
   ```
   ls /home
   ```

2. **Searched for newly created text files**
   ```
   find /home -name "*.txt"
   ```

3. **Inspected file contents**
   ```
   cat /home/user/notes.txt
   ```

4. **Searched for sensitive keywords**
   ```
   grep -r "password" /home
   ```

5. **Saved findings for reporting**
   ```
   grep -r "password" /home > evidence/grep-findings.txt
   ```

**Outcome:**  
The file contained hardcoded credentials — a misconfiguration rather than malicious activity. The issue was escalated to system administrators for remediation.

---

## Next Steps
This project is part of a broader portfolio demonstrating foundational skills before progressing into full SOC investigations.
