#!/bin/bash

# ==============================================================================
# Script Name:    debian_setup.sh
# Description:    Sets up a debian environment for personal usage.
# Author:         Shskjssk10
# ==============================================================================

# FAIL-SAFE SETTINGS
# -e: Exit immediately if a command fails
# -u: Exit if an unset variable is used
# -o pipefail: Catch errors in piped commands (e.g., command | grep)
set -euo pipefail

# Function for logging messages.
log_message() {
  echo "[$(date +'%Y-%m-%d %H:%M:%S')] $1"
}

# The 'trap' command runs a function if the script crashes or is interrupted.
trap cleanup EXIT

# Main function
main() {
    log_message "⏳ Starting debian_setup.sh process..."
    
    # Update and upgrade libraries and dependencies
    log_message "⏳ Updating and upgrading the system..."
    sudo apt update && sudo apt upgrade -y
    log_message "✅ System update and upgrade completed successfully."

    log_message "⏳ Installing common commands..."
    sudo add-apt-repository ppa:zhangsongcui3371/fastfetch -y
    sudo apt update && sudo apt install fastfetch -y
    sudo apt install htop -y
    log_message "✅ Common commands installed successfully."

    # Social Media Apps - Wechat, Telegram Desktop, Discord
    log_message "⏳ Installing Wechat..."
    sudo flatpak install com.tencent.WeChat
    log_message "✅ Wechat installed successfully."

    log_message "⏳ Installing Telegram Desktop..."
    sudo flatpak install com.telegram.TelegramDesktop
    log_message "✅ Telegram Desktop installed successfully."


    # # Check if source directory exists
    # if [[ ! -d "$SOURCE_DIR" ]]; then
    #     log_message "ERROR: Source directory $SOURCE_DIR does not exist."
    #     exit 1
    # fi

    # # Create backup directory if it doesn't exist
    # mkdir -p "$BACKUP_DIR"

    # # Actual command execution
    # log_message "Compressing files..."
    # tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR"

    log_message "✅ Success! Debian system is updated and upgraded."
}
