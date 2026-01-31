#!/bin/bash

# Update package lists and upgrade existing packages
sudo apt update && sudo apt upgrade -y

# Install favorite programs
sudo apt config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/39/winehq.repo

sudo apt install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

sudo apt install -y git lolcat winehq-stable ani-cli firefox thunderbird konsole kate audacity speedtest-cli grep sed curl mpv aria2c ani-skip yt-dlp ffmpeg fzf patch timeshift steam lutris vlc kdenlive qbittorrent nano libreoffice mu gimp

# Configure preferences
echo "alias ll='ls -alF'" >> ~/.bashrc

# Additional configuration
git clone "https://github.com/pystardust/ani-cli.git"
sudo cp ani-cli/ani-cli /usr/local/bin
rm -rf ani-cli

mkdir -p build
cd build
cmake ..
cmake --build . --target fastfetch --target flashfetch

# Print completion message
echo "Setup complete!"
