# Mini Investigation Scenario

This scenario demonstrates how the Linux fundamentals practiced in this project apply to a real SOC investigation.

## Scenario Summary
A fictional alert indicated suspicious file creation under `/home`. The objective was to identify unusual files, inspect their contents, and determine whether they posed a security risk.

## Investigation Steps

### 1. Enumerate the directory
```
ls /home
```

### 2. Search for newly created text files
```
find /home -name "*.txt"
```

### 3. Inspect file contents
```
cat /home/user/notes.txt
```

### 4. Search for sensitive keywords
```
grep -r "password" /home
```

### 5. Save findings for reporting
```
grep -r "password" /home > evidence/grep-findings.txt
```

## Outcome
The suspicious file contained hardcoded credentials. This was determined to be a misconfiguration rather than malicious activity. The issue was escalated to system administrators for remediation.

---

This scenario demonstrates how basic Linux commands support real-world SOC workflows, including triage, evidence collection, and escalation.
