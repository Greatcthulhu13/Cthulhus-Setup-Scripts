#!/bin/bash

# Refresh Zypper repository metadata
sudo zypper refresh

# Update installed packages
sudo zypper update -y 

# Install favorite programs from official repositories
sudo zypper install -y git fastfetch lolcat firefox thunderbird konsole kate audacity speedtest-cli grep sed curl mpv aria2c ani-skip yt-dlp ffmpeg fzf patch timeshift steam lutris vlc kdenlive qbittorrent nano libreoffice mu vlc gimp

zypper addrepo https://download.copr.fedorainfracloud.org/results/derisis13/ani-cli/opensuse-tumbleweed-x86_64/ ani-cli
zypper dup
zypper install ani-cli

# Add additional configuration steps as needed
git clone "https://github.com/pystardust/ani-cli.git"
sudo cp ani-cli/ani-cli /usr/local/bin
rm -rf ani-cli

# Print completion message
echo "Setup complete!"
