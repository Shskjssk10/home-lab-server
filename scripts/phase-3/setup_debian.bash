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

# VARIABLES
FASTFETCH_REPO="ppa:zhangsongcui3371/fastfetch"
UV_DOWNLOAD_URL="https://astral.sh/uv/install.sh"
VSCODE_DOWNLOAD_URL="https://go.microsoft.com/fwlink/?LinkID=760868"
POSTMAN_DOWNLOAD_URL="https://dl.pstmn.io/download/latest/linux_64"
POSTMAN_DESKTOP_CONFIG="[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=/usr/local/bin/postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;"

# Main function
main() {
    log_message "⏳ Starting debian_setup.sh process..."
    
    # Update and upgrade libraries and dependencies
    log_message "⏳ Updating and upgrading the system..."
    sudo apt update && sudo apt upgrade -y
    log_message "✅ System update and upgrade completed successfully."

    log_message "⏳ Installing common commands..."
    sudo add-apt-repository "$FASTFETCH_REPO" -y
    sudo apt update && sudo apt install fastfetch -y
    sudo apt install htop -y
    sudo apt install speedtest-cli -y
    log_message "✅ Common commands installed successfully."

    log_message "⏳ Installing uv..."
    curl -LsSf "$UV_DOWNLOAD_URL" | sh
    source $HOME/.local/bin/env
    log_message "✅ uv installed successfully."

    # Social Media Apps - Wechat, Telegram Desktop, Discord etc. via flatpak
    log_message "⏳ Installing Wechat..."
    sudo flatpak install com.tencent.WeChat
    log_message "✅ Wechat installed successfully."

    log_message "⏳ Installing Telegram Desktop..."
    sudo flatpak install com.telegram.TelegramDesktop
    log_message "✅ Telegram Desktop installed successfully."

    log_message "⏳ Installing Discord..."
    sudo flatpak install com.discordapp.Discord
    log_message "✅ Discord installed successfully."

    log_message "⏳ Installing Brave..."
    sudo flatpak install com.brave.Browser
    log_message "✅ Brave installed successfully."

    log_message "⏳ Installing Whatsie..."
    sudo flatpak install com.ktechpit.whatsie
    log_message "✅ Whatsie installed successfully."

    # Productivity Apps - Vscode, Wireguard etc. 

    log_message "⏳ Installing Wireguard..."
    sudo apt install wireguard -y
    log_message "✅ Wireguard installed successfully."

    log_message "⏳ Installing VSCode..."
    sudo wget -O vscode.deb "$VSCODE_DOWNLOAD_URL" && sudo apt install ./vscode.deb -y
    log_message "✅ VSCode installed successfully."

    log_message "⏳ Installing Postman..."
    sudo curl -o postman.tar.gz "$POSTMAN_DOWNLOAD_URL" && tar -xzf postman.tar.gz -C /opt
    sudo ln -s /opt/Postman/Postman /usr/local/bin/postman
    echo "$POSTMAN_DESKTOP_CONFIG" >> ~/.local/share/applications/postman.desktop
    log_message "✅ Postman installed successfully."

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
