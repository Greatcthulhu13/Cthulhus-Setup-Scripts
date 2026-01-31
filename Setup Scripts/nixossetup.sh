#!/bin/bash

# Update Nix channels
sudo nix-channel --update

# Update installed packages
sudo nix-env -u

# Install favorite programs from Nixpkgs
sudo nix-env -iA git fastfetch lolcat firefox thunderbird konsole kate audacity speedtest-cli grep sed curl mpv aria2c yt-dlp ffmpeg fzf patch ani-skip timeshift steam lutris vlc kdenlive qbittorrent nano libreoffice mu gimp

nix-shell -p fastfetch

# Add additional configuration steps as needed
git clone "https://github.com/pystardust/ani-cli.git"
sudo cp ani-cli/ani-cli /usr/local/bin
rm -rf ani-cli

# Print completion message
echo "Setup complete!"
