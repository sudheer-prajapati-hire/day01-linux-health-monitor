# Linux Server Health Monitor

## Objective
A Bash tool for checking basic Linux system health.

## Metrics
- Hostname and date
- System uptime
- Memory and swap usage
- Root filesystem disk usage
- System load averages
- Top CPU-consuming processes

## Requirements
- Linux or WSL2
- Bash
- free, df, uptime and ps utilities

## Run
    chmod +x health-check.sh
    ./health-check.sh

## Save a report
    ./health-check.sh > health-report.txt

## Validate syntax
    bash -n health-check.sh

## Safety
The script reads system information and does not intentionally modify system settings.
