#!/bin/bash
# Demo script: basic SSH hardening

echo "2. Hardening SSH (demo)..."

SSHD_CONFIG="/etc/ssh/sshd_config"

# Backup original config once
if [ ! -f "${SSHD_CONFIG}.linuxbaseline.backup" ]; then
    cp "${SSHD_CONFIG}" "${SSHD_CONFIG}.linuxbaseline.backup"
fi

# Apply simple hardening
sed -i 's/#*PermitRootLogin.*/PermitRootLogin no/' "${SSHD_CONFIG}"
sed -i 's/#*PasswordAuthentication.*/PasswordAuthentication no/' "${SSHD_CONFIG}"
sed -i 's/#*PubkeyAuthentication.*/PubkeyAuthentication yes/' "${SSHD_CONFIG}"

systemctl restart ssh || systemctl restart sshd || true

echo "OK SSH basic hardening applied (demo)."
