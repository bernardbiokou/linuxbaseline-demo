# linuxbaseline (demo)

Linux baseline kit for sysadmins and DevOps.  
This public repository shows the basic idea of the baseline: bash scripts to provision a secure, standardized Debian/Ubuntu server (non-root admin user, SSH hardening, etc.).

The full production-ready kit (all scripts + guide + support) will be available on my store soon.

## What this demo contains

- `scripts/config.sh` – simple configuration file (admin user, SSH key, timezone)
- `scripts/01_create_admin_user.sh` – creates a non-root admin user with sudo and SSH key
- `scripts/02_harden_ssh.sh` – basic SSH hardening (disable root login and password auth)

The private full version also adds:

- UFW firewall configuration
- Automatic security updates
- Essential packages (vim, htop, curl, wget, fail2ban, tree, glances)
- Log and time sync configuration
- A complete step-by-step guide and post-check script

## Warning

These scripts are provided **for demo and educational purposes**.  
Always review and adapt them before running on any production system.

## Quick demo

git clone https://github.com/bernardbiokou/linuxbaseline-demo.git
cd scripts

Edit the config and paste your SSH public key
nano config.sh

Run as root on a test Debian/Ubuntu server
sudo bash 01_create_admin_user.sh
sudo bash 02_harden_ssh.sh

## Full version 

A complete, production-ready version of this kit (all scripts + documentation + support) available on gumroad.  
https://alobasphere.gumroad.com/l/linux-baseline-kit

## Roadmap

- v1.1: More OS versions tested (Rocky/AlmaLinux/CentOS)
- v1.2: Optional profile for web servers (HTTP/HTTPS firewall presets)
- v2.0: Ansible role for the full baseline
- v2.1: UFW + fail2ban “security add-on” kit
- v3.0: Monitoring starter (node_exporter + basic dashboard)
