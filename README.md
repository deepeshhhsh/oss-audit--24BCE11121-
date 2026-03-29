# Open Source Software Lab – Shell Scripting Initiative

## Project Author
**Name:** DEEPESH CHAUHAN  
**Roll Number:** 24BCE11121

## Selected Application
**VLC Media Player**  
An open-source multimedia player with broad format compatibility  
Capable of handling numerous audio and video file types

---

## Overview
This project consists of **five automated shell scripts** designed to perform essential Linux administrative tasks: system diagnostics, dependency verification, security auditing, event tracking, and open-source philosophy exploration.

---

## Detailed Script Breakdown

### Script 1: System Configuration Dashboard
Retrieves and presents comprehensive system metadata:
- Operating system kernel information
- Current user session details
- Machine uptime calculation
- Installed Linux variant identification
- Present date and time
- Student identification and software selection display

### Script 2: Open-Source Package Verifier
Investigates package installation status across the system:

**Information Retrieved:**
- Package version number
- Responsible maintainer details
- Complete package description

**Additional Feature:**
Includes commentary on open-source principles through conditional logic statements

### Script 3: File System & Access Rights Inspector
Examines access control attributes of critical directories:

**Targeted Directories:**
- /etc
- /var/log
- /home
- /usr/bin
- /tmp

**Audit Details Provided:**
- Access control settings
- Directory proprietor
- Associated group information
- Storage capacity allocation
- VLC application configuration folder inspection

### Script 4: Application Event Log Processor
Accepts a log document as input parameter:

**Functionality:**
- Searches for user-specified terms within logs
- Pre-configured default search term: 'error'

**Output Information:**
- Cumulative count of matching entries
- Previous five occurrences with context

### Script 5: Open Source Principles Declaration Composer
Accepts interactive user inputs:
- Application/tool name
- Your interpretation of software liberty
- Proposed development initiative

**Result:**
Generates a personalized open-source declaration and preserves it to disk

---

## System Requirements & Setup

### Required Utilities
Confirm your system has the subsequent command-line tools available:
- bash shell interpreter
- dpkg package manager
- lsb_release distribution identifier
- awk text processor
- grep search utility
- du disk usage calculator
- whoami user identifier
- uptime system metric tool

### Installation Instructions
```bash
sudo apt update
sudo apt install lsb-release coreutils
```

---

## Execution Instructions

### Preparation Step: Assign Execution Permissions
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

---

### Launch Script 1: System Report
```bash
./script1.sh
```

---

### Launch Script 2: Package Inspector
```bash
./script2.sh
```

---

### Launch Script 3: Directory Audit Tool
```bash
./script3.sh
```

---

### Launch Script 4: Log Investigation Utility
```bash
./script4.sh <logfile> [keyword]
```

**Sample Usage:**
```bash
./script4.sh log.txt error
```

---

### Launch Script 5: Manifesto Generation Tool
```bash
./script5.sh
```

Respond to the interactive questions to build your declaration.

---

## Important Reminders
- Execute all scripts from their residing directory location
- Script 4 requires a legitimate log or text document as input
- Remember that Linux distinguishes between uppercase and lowercase letters – type file designations precisely
- Path references must match exactly

---

## Summary
This initiative exemplifies the practical application of shell automation for system administration and monitoring objectives. It simultaneously deepens comprehension of free and open-source software philosophies within a Linux computing environment.
