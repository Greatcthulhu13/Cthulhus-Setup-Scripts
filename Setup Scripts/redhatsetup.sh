#!/bin/bash

# Update package lists and upgrade existing packages
sudo dnf update && sudo dnf upgrade -y

# Install favorite programs
sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/39/winehq.repo

sudo dnf copr enable derisis13/ani-cli

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install -y git fastfetch lolcat winehq-stable firefox thunderbird konsole kate audacity speedtest-cli grep sed curl mpv aria2c yt-dlp ffmpeg fzf patch ani-skip timeshift steam lutris vlc kdenlive qbittorrent nano libreoffice mu gimp

# Configure preferences 
echo "alias ll='ls -alF'" >> ~/.bashrc

# Additional configuration
git clone "https://github.com/pystardust/ani-cli.git"
sudo cp ani-cli/ani-cli /usr/local/bin
rm -rf ani-cli

# Print completion message
echo "Setup complete!"
