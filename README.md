# AWS MySQL Production Infrastructure

## 1. Project Purpose

This project builds AWS infrastructure for running MySQL on Amazon RDS using
Terraform.

The objective is to practice production-oriented database infrastructure:
network isolation, access control, encryption, monitoring, backup and recovery,
and environment separation.

## 2. Planned Environments

- **Development (`dev`)**: a separate environment for development and validation.
- **Production (`prod`)**: a separately configured environment with stricter
  availability, security, and recovery requirements.

Environment-specific configuration will be kept separate. Credentials and
database passwords must not be committed to Git.

## 3. Planned Architecture

The implementation is planned to include:

- A dedicated Amazon VPC and private database subnets.
- Security groups that restrict database network access.
- Amazon RDS for MySQL.
- Environment-appropriate database availability and backup settings.
- AWS KMS encryption where applicable.
- CloudWatch monitoring and alarms.
- A Terraform remote-state backend with appropriate access controls.

These are planned components. Their final configuration will be documented
as they are implemented and validated.

## 4. Repository Structure

- `environments/`: environment-specific Terraform configuration.
- `modules/network/`: network resources.
- `modules/security/`: network and database access controls.
- `modules/rds-mysql/`: RDS MySQL configuration.
- `modules/monitoring/`: monitoring and alerting.
- `modules/kms/`: encryption key configuration.
- `docs/`: architecture, security, disaster recovery, monitoring, and operational
  documentation.

## 5. Safety Rules

- Never commit AWS access keys, passwords, or other secrets.
- Do not commit Terraform state files.
- Review Terraform plans before applying changes.
- Do not apply infrastructure changes to production without explicit review.
- Verify backup and recovery procedures rather than assuming that backups work.
- Keep development and production configurations separate.

## 6. Implementation Workflow

The project will be built incrementally:

1. Validate local tools and AWS identity.
2. Establish repository and configuration conventions.
3. Design the network and security boundaries.
4. Configure Terraform state storage and locking.
5. Implement and validate infrastructure modules.
6. Add monitoring, backup, and recovery documentation.
7. Review plans and test the deployment and operational procedures.

## 7. Current Status

Repository initialized locally. Project documentation and infrastructure
configuration are being developed incrementally.

No AWS infrastructure is declared or deployed by this repository yet.
