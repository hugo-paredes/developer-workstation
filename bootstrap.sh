#!/bin/bash -uxe

# Quit on error
set -e
set +x

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Update system
sudo apt update && sudo apt upgrade -y
# Install dependencies
sudo apt install -y python3.10 python3-pip git
# Install ansible
pip install ansible
sudo apt install -y ansible-lint yamllint

cd "/home/$SUDO_USER" && \
  git clone https://github.com/hugo-paredes/developer-workstation.git && \
  cd developer-workstation && \
  ansible-playbook playbooks/main.yml

exit 0
