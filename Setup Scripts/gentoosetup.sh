#!/bin/bash

# Update Portage tree
sudo emerge --sync

# Update installed packages
sudo emerge -avuDN @world

# Install favorite programs from Portage
sudo emerge -av git lolcat firefox thunderbird konsole kate audacity speedtest-cli grep sed curl mpv aria2c yt-dlp ffmpeg fzf patch ani-skip timeshift steam lutris vlc kdenlive qbittorrent nano libreoffice mu gimp

sudo emerge --ask app-misc/fastfetch

sudo eselect repository enable guru
sudo emaint sync -r guru
sudo emerge -a ani-cli
sudo emerge -a =app-misc/ani-cli-9999

# Additional configuration 
git clone "https://github.com/pystardust/ani-cli.git"
sudo cp ani-cli/ani-cli /usr/local/bin
rm -rf ani-cli

# Print completion message
echo "Setup complete!"
