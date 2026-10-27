#!/usr/bin/env bash

set -uo pipefail

echo "=================================="
echo "       LINUX HEALTH REPORT"
echo "=================================="

echo "Hostname : $(hostname)"
echo "Date     : $(date)"
echo "Uptime   : $(uptime -p)"

echo
echo "----- MEMORY -----"
free -h

echo
echo "----- ROOT DISK -----"
df -h /

echo
echo "----- CPU LOAD -----"
cat /proc/loadavg

echo
echo "----- TOP CPU PROCESSES -----"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6

echo
echo "Health report completed."
