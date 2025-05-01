#!/bin/sh

# Update system and repositories, add repos
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /etc/apt/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/etc/apt/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update

# Programming tools
sudo apt-get install -y gcc build-essential gdb
sudo apt-get install -y lua5.1 luarocks luajit
sudo apt-get install -y python3 python3.12-venv python3-pip
sudo apt-get install -y nodejs npm default-jre
sudo apt-get install -y ninja-build gettext cmake ccache git

# Cli tools
sudo apt-get install -y wezterm tree-sitter-cli
sudo apt-get install -y unzip zip tar lzip 7zip lf trash-cli eza
sudo apt-get install -y htop stress-ng xwallpaper xclip
sudo apt-get install -y fzf fd-find ripgrep jq
sudo apt-get install -y yt-dlp mpv nsxiv imagemagick ffmpeg
sudo apt-get install -y zathura zathura-poppler

# Fonts and icons
sudo apt-get install -y fonts-recommended fonts-noto
sudo apt-get install -y fonts-freefont-otf fonts-roboto fonts-dejavu
sudo apt-get install -y fonts-linuxlibertine fonts-liberation
sudo apt-get install -y fonts-crosextra-carlito fonts-crosextra-caladea
sudo apt-get install -y papirus-icon-theme

# Software
sudo apt-get install -y keepassxc gimp audacious easytag

### Building neovim
git clone https://github.com/neovim/neovim "$HOME/Downloads/neovim"
#cd neovim && git checkout stable
#make CMAKE_BUILD_TYPE=Release
#sudo make install

# Mullvad browser
wget --trust-server-names https://mullvad.net/en/download/browser/linux-x86_64/latest -P ~/Downloads

# Install fonts
mkdir -p "$HOME/.local/share/fonts"
cd "$HOME/.local/share/fonts"
curl -L -o JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip

# Reboot
sudo reboot
