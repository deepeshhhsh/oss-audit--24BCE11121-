#!/bin/bash
# Script 4: Log File Analyzer
# Author: Deepesh | Course: Open Source Software
# Usage: ./script4.sh <logfile> <keyword>

LOGFILE="$1"
KEYWORD="${2:-error}"   # Default keyword is 'error'

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty. Please provide a valid log file."
    exit 1
fi

# Count keyword matches (faster method)
COUNT=$(grep -i "$KEYWORD" "$LOGFILE" | wc -l)

# Print count summary
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
