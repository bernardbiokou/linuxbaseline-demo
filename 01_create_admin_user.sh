#!/bin/bash
# Demo script: create a non-root admin user with SSH key

source ./config.sh

echo "1. Creating admin user ${ADMIN_USER} (demo)..."

# Create user with home and shell (ignore error if already exists)
id "${ADMIN_USER}" >/dev/null 2>&1 || useradd -m -s /bin/bash "${ADMIN_USER}"

# Add to sudo group without password
echo "${ADMIN_USER} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/"${ADMIN_USER}"
chmod 440 /etc/sudoers.d/"${ADMIN_USER}"

# Add SSH key
mkdir -p /home/"${ADMIN_USER}"/.ssh
echo "${ADMIN_SSH_KEY}" > /home/"${ADMIN_USER}"/.ssh/authorized_keys
chown -R "${ADMIN_USER}":"${ADMIN_USER}" /home/"${ADMIN_USER}"/.ssh
chmod 700 /home/"${ADMIN_USER}"/.ssh
chmod 600 /home/"${ADMIN_USER}"/.ssh/authorized_keys

echo "OK Admin user ${ADMIN_USER} created (demo)."
