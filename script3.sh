#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Deepesh | Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo "      Directory Audit Report"
echo "======================================"
echo ""

# Loop through each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Get human-readable size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        printf "%-12s => Permissions: %-20s | Size: %s\n" "$DIR" "$PERMS" "$SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""

# Check if VLC config directory exists
CONFIG_DIR="/etc/vlc"

if [ -d "$CONFIG_DIR" ]; then
    PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "VLC Config Directory: $CONFIG_DIR => Permissions: $PERMS"
else
    echo "VLC config directory not found"
fi
