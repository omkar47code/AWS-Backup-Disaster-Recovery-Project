# AWS Backup & Disaster Recovery Automation for Amazon EC2

> A production-inspired AWS Backup and Disaster Recovery solution that automates EC2 backup verification, monitoring, alerting, scheduled health checks, and disaster recovery using native AWS services.

---

# 📖 Project Overview

This project demonstrates the implementation of a production-inspired **Backup and Disaster Recovery (DR)** solution for an Amazon EC2 instance using AWS native services.

The solution automates:

- EC2 backup creation using AWS Backup
- Backup verification using a custom Bash script
- Timestamped backup report generation
- Uploading reports to Amazon S3
- Centralized logging with Amazon CloudWatch Logs
- Backup failure detection using Metric Filters
- Email notifications through Amazon SNS
- Scheduled execution using Amazon EventBridge and AWS Systems Manager
- Disaster recovery validation by restoring an EC2 instance from a recovery point

---

# 🏗️ Architecture

<p align="center">
    <img src="architecture/aws-backup-dr-architecture.png" alt="AWS Backup & Disaster Recovery Architecture" width="100%">
</p>

---

# 🎯 Objectives

- Automate EC2 backup creation
- Secure recovery points inside AWS Backup Vault
- Generate automated backup health reports
- Upload reports to Amazon S3
- Monitor backup health using CloudWatch
- Detect backup failures automatically
- Notify administrators through Amazon SNS
- Automate backup verification
- Demonstrate Disaster Recovery through EC2 restoration

---

# ✨ Features

- Automated Backup Management
- Scheduled Backup Verification
- Timestamped Backup Reports
- Amazon S3 Report Storage
- CloudWatch Log Monitoring
- Metric Filter Failure Detection
- CloudWatch Alarm Monitoring
- Amazon SNS Email Notifications
- Disaster Recovery Validation
- IAM Role Based Authentication

---

# ☁️ AWS Services Used

| AWS Service | Purpose |
|-------------|---------|
| Amazon EC2 | Production Server |
| Amazon EBS | Persistent Storage |
| AWS Backup | Backup Management |
| Backup Vault | Recovery Point Storage |
| Amazon S3 | Backup Report Storage |
| Amazon CloudWatch Logs | Centralized Logging |
| CloudWatch Metric Filter | Backup Failure Detection |
| CloudWatch Alarm | Monitoring |
| Amazon SNS | Email Notifications |
| Amazon EventBridge | Scheduled Automation |
| AWS Systems Manager | Remote Script Execution |
| IAM | Secure Access |
| AWS CLI | Backup Status Retrieval |

---

# 📂 Repository Structure

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
├── screenshots/
│   ├── 01-ec2-instance.png
│   ├── 02-backup-plan.png
│   ├── 03-backup-vault.png
│   ├── 04-recovery-point.png
│   ├── 05-s3-bucket.png
│   ├── 06-cloudwatch-logs.png
│   ├── 07-metric-filter.png
│   ├── 08-cloudwatch-alarm.png
│   ├── 09-sns-topic.png
│   ├── 10-eventbridge-scheduler.png
│   ├── 11-systems-manager.png
│   └── 12-restored-instance.png
│
└── docs/
    ├── HLD.md
    ├── LLD.md
    └── implementation-guide.md
```

---

# 🔄 Project Workflow

```text
Administrator
      │
      ▼
EventBridge Scheduler
      │
      ▼
AWS Systems Manager
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
                  Email Notification
```

---

# ⚙️ Implementation Guide

Detailed implementation documents are available inside the **docs/** directory.

- High Level Design (HLD)
- Low Level Design (LLD)
- Implementation Guide

---

# 🛡️ Disaster Recovery Demonstration

The disaster recovery process was validated by restoring the protected EC2 instance from an AWS Backup recovery point.

Validation performed:

- Successfully restored the EC2 instance
- Verified application files
- Verified backup reports
- Verified IAM Role functionality
- Verified AWS CLI access
- Verified Amazon S3 connectivity

---

# 📊 Monitoring & Alerting

Monitoring Pipeline

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

Whenever a backup failure is detected, the CloudWatch Metric Filter increments the **BackupFailures** metric. This causes the CloudWatch Alarm to enter the **ALARM** state and Amazon SNS sends an email notification to the administrator.

---

# 📸 Screenshots

| Screenshot | Description |
|------------|-------------|
| EC2 Instance | Production EC2 Instance |
| Backup Plan | AWS Backup Plan |
| Backup Vault | Backup Vault Configuration |
| Recovery Point | Successful Backup |
| Amazon S3 | Backup Reports |
| CloudWatch Logs | Log Collection |
| Metric Filter | Failure Detection |
| CloudWatch Alarm | Monitoring |
| Amazon SNS | Email Notifications |
| EventBridge Scheduler | Scheduled Automation |
| AWS Systems Manager | Run Command |
| Restored EC2 | Disaster Recovery Validation |

---

# 🚀 Future Improvements

- Cross-Region Backup
- Cross-Account Disaster Recovery
- AWS Backup Audit Manager
- AWS Lambda Integration
- CloudWatch Dashboard
- Terraform Infrastructure as Code
- Slack Notifications
- Automated Recovery Testing
- Cost Optimization Policies

---

# 📚 Learning Outcomes

This project demonstrates practical experience with:

- AWS Backup
- Amazon EC2
- Amazon EBS
- Amazon S3
- Amazon CloudWatch
- Amazon SNS
- Amazon EventBridge
- AWS Systems Manager
- IAM Roles & Policies
- AWS CLI
- Bash Scripting
- Disaster Recovery Planning

---

# 👨‍💻 Author

**Omkar Sutrave**

Cloud | AWS | Linux | DevOps

GitHub: **https://github.com/omkar47code**

---

# 📄 License

This project is intended for educational and portfolio purposes.
