# Linux System Administration — Progress Log

## Project: YGGDRASIL-LNX01

**Operating System:** Ubuntu Server 24.04.5 LTS  
**Virtualization Platform:** Microsoft Hyper-V  
**Project Status:** Active  
**Current Milestone:** Linux Command-Line Fundamentals

---

## Milestone 1: Linux Server Deployment
**Status: COMPLETED**

### Accomplishments

- [x] Created a Generation 2 virtual machine in Hyper-V
- [x] Installed Ubuntu Server 24.04.5 LTS
- [x] Configured networking using DHCP
- [x] Configured storage using Logical Volume Manager (LVM)
- [x] Created an administrator account
- [x] Verified CPU, RAM, storage, and networking
- [x] Installed and configured OpenSSH
- [x] Established remote SSH access from Windows
- [x] Troubleshot SSH connection failures
- [x] Applied system updates and verified remote access
- [x] Created a Hyper-V recovery checkpoint
- [x] Initialized a Git repository
- [x] Published project documentation to GitHub

### Skills Practiced

| Skill | Experience Gained |
|-------|-------------------|
| Hyper-V | Virtual machine deployment |
| Ubuntu Server | Installation and initial configuration |
| Networking | DHCP, IP addressing, DNS, connectivity testing |
| SSH | Remote administration and troubleshooting |
| systemctl | Service and socket inspection |
| journalctl | System log inspection |
| APT | Package updates and maintenance |
| Linux Processes | Process identification and termination |
| Git | Repository initialization, commits, and publishing |

### Troubleshooting Experience

**Issue:** SSH connections initially failed with connection-aborted and broken-pipe errors.

**Investigation:**
- Verified port 22 was listening
- Inspected SSH service and socket status
- Examined authentication and system logs
- Tested SSH connections locally and remotely
- Used verbose SSH debugging

**Outcome:** Local and remote SSH connections succeeded. The original cause was not conclusively identified.

**Additional Issue:** SSH debugging messages continued appearing in the console.

**Resolution:** Identified the debugging process using `ps` and `grep`, then terminated it using `kill`.

---

## Milestone 2: Linux Command-Line Fundamentals
**Status: NOT STARTED**

### Planned Skills

- [ ] Linux filesystem navigation
- [ ] File and directory management
- [ ] File permissions and ownership
- [ ] User and group administration
- [ ] Package management
- [ ] Process and service management
- [ ] Basic shell scripting

---

## Skills Demonstrated Independently

This section tracks abilities I can demonstrate without step-by-step instructions.

**Not yet formally assessed.**

Future practical exercises will be used to verify independent proficiency.

---

## Next Steps

1. Begin Linux command-line fundamentals.
2. Practice commands through hands-on exercises.
3. Complete practical skill assessments.
4. Continue documenting GitHub milestones.