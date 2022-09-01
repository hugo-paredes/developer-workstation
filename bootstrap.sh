#!/bin/bash -uxe

# Quit on error
set -e

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Update system
sudo apt update && sudo apt upgrade -y
# Install dependencies
sudo apt install -y python3-pip git
# Install ansible
pip install ansible
