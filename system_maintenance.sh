#!/bin/bash

# ============================================
# Linux System Maintenance Script (APT-based)
# Author: Madhan
# Description: Update, upgrade, clean, fix
# ============================================

echo "============================================"
echo " 🔧 Starting Linux System Maintenance"
echo "============================================"

# 1. Update package list
echo -e "\n📦 Updating package list..."
sudo apt update

# 2. Fix broken packages (if any)
echo -e "\n🛠 Fixing broken packages..."
sudo apt --fix-broken install -y
sudo dpkg --configure -a

# 3. Upgrade installed packages
echo -e "\n⬆️ Upgrading installed packages..."
sudo apt upgrade -y

# 4. Full upgrade (handles dependency changes)
echo -e "\n🚀 Performing full upgrade..."
sudo apt full-upgrade -y

# 5. Remove unused dependencies
echo -e "\n🧹 Removing unused packages..."
sudo apt autoremove -y

# 6. Remove leftover config files
echo -e "\n🧽 Purging residual config files..."
sudo apt autoremove --purge -y

# 7. Clean package cache
echo -e "\n🗑 Cleaning package cache..."
sudo apt autoclean
sudo apt clean

# 8. Show disk usage
echo -e "\n💽 Disk usage summary:"
df -h

# 9. Show system uptime
echo -e "\n⏱ System uptime:"
uptime

echo "============================================"
echo " ✅ System Maintenance Completed Successfully"
echo "============================================"
