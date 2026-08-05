# AWS Backup & Disaster Recovery Automation for Amazon EC2

A production-inspired AWS Backup and Disaster Recovery solution that automates EC2 backup verification, monitoring, alerting, and disaster recovery using native AWS services.

---

# Project Overview

This project demonstrates the implementation of an automated Backup and Disaster Recovery (DR) solution for an Amazon EC2 instance using AWS native services.

The solution includes:

- Automated EC2 backups using AWS Backup
- Backup report generation using a custom Bash automation script
- Report storage in Amazon S3
- Centralized logging with Amazon CloudWatch Logs
- Backup failure detection using CloudWatch Metric Filters
- Monitoring using CloudWatch Alarms
- Email notifications using Amazon SNS
- Remote execution of the backup verification script using AWS Systems Manager Run Command
- Disaster Recovery validation by restoring an EC2 instance from an AWS Backup recovery point

---

# Architecture

<p align="center">
    <img src="architecture/aws-backup-dr-architecture.png" alt="AWS Backup & Disaster Recovery Architecture" width="100%">
</p>

---

# Objectives

- Automate EC2 backup creation
- Secure recovery points using AWS Backup Vault
- Generate automated backup health reports
- Store reports in Amazon S3
- Detect backup failures automatically
- Notify administrators through Amazon SNS
- Execute backup verification remotely using AWS Systems Manager
- Demonstrate Disaster Recovery through EC2 restoration

---

# Features

- Automated EC2 Backup Management
- Backup Verification using Bash Automation
- Timestamped Backup Report Generation
- Amazon S3 Report Storage
- Centralized CloudWatch Logging
- Metric Filter-based Backup Failure Detection
- CloudWatch Alarm Monitoring
- Amazon SNS Email Notifications
- Disaster Recovery Validation
- IAM Role-based Authentication
- Remote Script Execution using AWS Systems Manager

---

# AWS Services Used

| Service | Purpose |
|----------|---------|
| Amazon EC2 | Production Server |
| Amazon EBS | Persistent Storage |
| AWS Backup | Backup Management |
| Backup Vault | Recovery Point Storage |
| Amazon S3 | Backup Report Storage |
| Amazon CloudWatch Logs | Centralized Logging |
| CloudWatch Metric Filter | Backup Failure Detection |
| CloudWatch Alarm | Monitoring |
| Amazon SNS | Email Notifications |
| AWS Systems Manager | Remote Script Execution |
| IAM | Secure Access Management |
| AWS CLI | Backup Status Retrieval |

---

# Repository Structure

```text
AWS-Backup-Disaster-Recovery-Project/
│
├── README.md
├── LICENSE
│
├── architecture/
│   └── aws-backup-dr-architecture.png
│
├── scripts/
│   └── backup_report.sh
│
└── screenshots/
    ├── 01-ec2-instance.png
    ├── 02-backup-plan.png
    ├── 03-backup-vault.png
    ├── 04-recovery-point.png
    ├── 05-s3-bucket.png
    ├── 06-cloudwatch-logs.png
    ├── 07-metric-filter.png
    ├── 08-cloudwatch-alarm.png
    ├── 09-sns-topic.png
    ├── 10-systems-manager-run-command.png
    ├── 11-script-output.png
    └── 12-restored-instance.png
```

---

# Project Workflow

```text
Administrator
      │
      ▼
AWS Systems Manager Run Command
      │
      ▼
backup_report.sh
      │
      ├────────────► AWS Backup
      │                  │
      │                  ▼
      │           Backup Vault
      │                  │
      │                  ▼
      │           Recovery Point
      │                  │
      │                  ▼
      │            Restore EC2
      │
      ├────────────► Amazon S3
      │
      └────────────► CloudWatch Logs
                           │
                           ▼
                    Metric Filter
                           │
                           ▼
                   CloudWatch Alarm
                           │
                           ▼
                      Amazon SNS
                           │
                           ▼
                  Administrator Email
```

---

# Implementation Summary

The project was implemented in the following stages:

1. Provisioned an Amazon EC2 instance.
2. Created an AWS Backup Vault.
3. Configured an AWS Backup Plan.
4. Protected the EC2 instance using the backup plan.
5. Generated recovery points.
6. Developed a Bash automation script for backup verification.
7. Uploaded backup reports to Amazon S3.
8. Configured CloudWatch Logs.
9. Created a Metric Filter to detect backup failures.
10. Configured a CloudWatch Alarm.
11. Configured Amazon SNS email notifications.
12. Executed the backup verification script remotely using AWS Systems Manager Run Command.
13. Restored the EC2 instance from a recovery point.
14. Verified successful Disaster Recovery.

---

# Disaster Recovery Validation

The Disaster Recovery process was successfully validated by restoring the protected EC2 instance from an AWS Backup recovery point.

Validation included:

- Successful EC2 restoration
- Verification of application files
- Verification of backup reports
- Verification of IAM Role functionality
- Verification of AWS CLI access
- Verification of Amazon S3 connectivity

---

# Monitoring and Alerting

The monitoring pipeline implemented in this project is shown below.

```text
CloudWatch Logs
      │
      ▼
Metric Filter
      │
      ▼
CloudWatch Alarm
      │
      ▼
Amazon SNS
      │
      ▼
Administrator Email
```

Whenever the backup verification script logs a backup failure, the Metric Filter increments the **BackupFailures** metric. The CloudWatch Alarm transitions to the **ALARM** state and Amazon SNS sends an email notification to the administrator.

---

# Screenshots

| Screenshot | Description |
|------------|-------------|
| EC2 Instance | Amazon EC2 instance |
| Backup Plan | AWS Backup Plan |
| Backup Vault | Backup Vault |
| Recovery Point | Successful Recovery Point |
| Amazon S3 | Backup Reports |
| CloudWatch Logs | Log Collection |
| Metric Filter | Backup Failure Detection |
| CloudWatch Alarm | Alarm Configuration |
| Amazon SNS | Notification Topic |
| AWS Systems Manager | Run Command Execution |
| Script Output | Backup Verification Script |
| Restored EC2 Instance | Disaster Recovery Validation |

---

# Future Improvements

- Automate script execution using Amazon EventBridge Scheduler
- Cross-Region Backup
- Cross-Account Disaster Recovery
- Infrastructure as Code using Terraform
- AWS Backup Audit Manager integration
- CloudWatch Dashboards
- Slack or Microsoft Teams notifications
- Automated Disaster Recovery testing
- Cost optimization using Lifecycle Policies

---

# Learning Outcomes

This project demonstrates practical implementation of:

- AWS Backup
- Amazon EC2
- Amazon EBS
- Amazon S3
- Amazon CloudWatch Logs
- CloudWatch Metric Filters
- CloudWatch Alarms
- Amazon SNS
- AWS Systems Manager
- IAM Roles and Policies
- AWS CLI
- Bash Automation
- Disaster Recovery Planning

---

# Author

**Omkar Sutrave**

Cloud | AWS | Linux | DevOps

GitHub: https://github.com/omkar47code

---

# License

This project is intended for educational and portfolio purposes.
