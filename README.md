# Linux System Administration Home Lab

## Project Overview

This project documents my hands-on experience deploying, configuring, securing, and administering Linux servers in a virtualized environment.

The lab is part of my larger IT career portfolio, focused on developing practical skills in systems administration, networking, automation, and cloud infrastructure.

Rather than simply following tutorials, I use this environment to practice troubleshooting, validate configurations, and document real-world administrative tasks.

## Lab Environment

| Component | Configuration |
|-----------|---------------|
| Hypervisor | Microsoft Hyper-V |
| Host Operating System | Windows 11 Pro |
| Virtual Machine | YGGDRASIL-LNX01 |
| Guest Operating System | Ubuntu Server 24.04.5 LTS |
| Virtual Processors | 4 |
| Memory | 4 GB |
| Virtual Disk | 40 GB (VHDX) |
| Network | Hyper-V Default Switch |
| Remote Administration | OpenSSH |

## Project Milestones

- [x] Deploy Ubuntu Server in Hyper-V
- [x] Configure networking and storage
- [x] Verify CPU, memory, and disk resources
- [x] Configure and troubleshoot SSH access
- [x] Establish remote administration from Windows
- [x] Apply and validate system updates
- [ ] Linux command-line fundamentals
- [ ] User and group management
- [ ] File permissions and access control
- [ ] Linux security hardening
- [ ] Storage and LVM administration
- [x] Bash scripting — Backup Utility v1.0 completed and tested
- [ ] Monitoring and troubleshooting

## Bash Backup Utility v1.0

Developed and tested a Bash script that creates timestamped backups of `notes.txt` on Ubuntu Server.

### Features

- Validates that the source file exists before starting.
- Uses `mktemp` to create a unique temporary file.
- Copies the source file and uses a hard link (`ln`) to finalize the backup without overwriting an existing destination.
- Records successful and failed backup attempts in `backup.log`.
- Returns meaningful exit statuses and removes temporary files after normal backup attempts.

### Validation Performed

- Verified Bash syntax using `bash -n`.
- Compared backup contents with the original using `diff`.
- Verified successful backup logging and exit status `0`.
- Tested missing-source-file handling and exit status `1`.
- Simulated a duplicate filename and confirmed the existing backup was preserved using SHA-256 checksums.
- Verified temporary-file cleanup after successful and failed backup attempts.

**Script:** [backup.sh](backup.sh)

For detailed progress and test results, see [PROGRESS.md](PROGRESS.md).

---

## Current Project Status

**Milestone 1: Linux Server Deployment — COMPLETE**

Deployed and configured Ubuntu Server 24.04.5 LTS in Microsoft Hyper-V, including networking, storage, SSH remote administration, and system updates.

**Milestone 2: Linux Command-Line Fundamentals — IN PROGRESS**

Completed guided practice covering Linux filesystem navigation, file management, permissions, package management, process management, and Bash scripting. Independent practical assessment is pending.

**Milestone 3: Bash Backup Utility v1.0 — FUNCTIONAL TESTING COMPLETE**

Developed and tested a Bash utility that creates timestamped backups, prevents overwrites, handles failures, records results, and cleans up temporary files.

**Next:** Publish the backup utility to GitHub, complete the independent Linux skills assessment, and continue user and group administration.