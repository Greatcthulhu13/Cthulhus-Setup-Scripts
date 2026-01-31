#!/bin/bash

# Update package lists and upgrade existing packages
sudo pacman -Syu --noconfirm

# Install favorite programs
sudo pacman -S --noconfirm git fastfetch lolcat firefox thunderbird konsole kate audacity speedtest-cli grep sed curl mpv aria2c yt-dlp ffmpeg fzf patch ani-skip timeshift steam lutris vlc kdenlive qbittorrent nano libreoffice mu gimp
 
sudo yay -S --noconfirm ani-cli
sudo yay -S --noconfirm ani-cli-git

# Configure preferences (example: setting up custom aliases)
echo "alias ll='ls -alF'" >> ~/.bashrc

# Additional configuration
git clone "https://github.com/pystardust/ani-cli.git"
sudo cp ani-cli/ani-cli /usr/local/bin
rm -rf ani-cli

# Print completion message
echo "Setup complete!"
