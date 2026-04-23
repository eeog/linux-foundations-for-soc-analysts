#!/bin/bash
# ---------------------------------------------------------
# Example Linux Commands Used in This Project
# Linux Foundations for SOC Analysts
# ---------------------------------------------------------

echo "Running example Linux investigation commands..."

# Identify current user
whoami

# Show working directory
pwd

# List directory contents
ls -la

# Navigate to a directory (example path)
cd /home 2>/dev/null

# Read file contents (example file)
cat /etc/hostname 2>/dev/null

# Locate files by extension
find / -name "*.txt" 2>/dev/null

# Search inside a file for a specific value
grep "password" /etc/* 2>/dev/null

# Recursive search across directories
grep -r "password" /home 2>/dev/null

# Redirect output (overwrite)
ls /home > evidence/home-listing.txt

# Redirect output (append)
echo "Scan completed." >> evidence/home-listing.txt

# Chain commands
cd /var && ls

# Run a command in the background
sleep 5 &

echo "Example commands completed."
