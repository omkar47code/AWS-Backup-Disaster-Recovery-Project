#!/bin/bash

# ============================================================
# Script Name : backup_report.sh
# Project     : AWS Backup & Disaster Recovery Automation
# Description : Retrieves recent AWS Backup jobs, generates a
#               timestamped backup report, uploads the report
#               to Amazon S3, and records execution logs.
#
# Author      : Omkar Sutrave
# Platform    : Amazon Linux 2023
# Services    : AWS Backup, Amazon S3, AWS CLI
# ============================================================

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

REPORT_DIR="/opt/backup-dr/reports"
LOG_DIR="/opt/backup-dr/logs"

REPORT_FILE="$REPORT_DIR/backup_report_$DATE.txt"
LOG_FILE="$LOG_DIR/backup_report.log"

# Create directories if they do not exist
mkdir -p "$REPORT_DIR"
mkdir -p "$LOG_DIR"

echo "==========================================" > "$REPORT_FILE"
echo " AWS Backup Report " >> "$REPORT_FILE"
echo " Generated: $(date)" >> "$REPORT_FILE"
echo "==========================================" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "Recent Backup Jobs" >> "$REPORT_FILE"
echo "------------------------------------------" >> "$REPORT_FILE"

aws backup list-backup-jobs \
    --by-state COMPLETED \
    --max-results 10 \
    >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "Report completed at $(date)" >> "$REPORT_FILE"

echo "$(date): Backup report generated successfully." >> "$LOG_FILE"

# Upload report to Amazon S3
aws s3 cp "$REPORT_FILE" s3://backup-dr-bucket/reports/

if [ $? -eq 0 ]; then
    echo "$(date): Report uploaded successfully to Amazon S3." >> "$LOG_FILE"
else
    echo "$(date): ERROR: Failed to upload report to Amazon S3." >> "$LOG_FILE"
fi
