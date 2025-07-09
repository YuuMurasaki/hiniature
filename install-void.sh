#!/bin/sh

###################################################################################
# Edit visudo to use sudo as normal user
# Edit: /etc/doas.conf
# Setup RUNTIME: add this to /etc/pam.d/login at the end of 'session'
# -session	optional	pam_rundir.so
###################################################################################
# Setup pipewire
# mkdir -p /etc/pipewire/pipewire.conf.d
# ln -s /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/
# ln -s /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d/
# mkdir -p /etc/alsa/conf.d
# ln -s /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d
# ln -s /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d
###################################################################################

xbps-install -Syu
xbps-install -y xorg xinit xrandr xsetroot xset xclip xwallpaper unclutter-xfixes
xbps-install -y base-devel libX11-devel libXft-devel libXinerama-devel libXrandr-devel ncurses
xbps-install -y freetype-devel fontconfig-devel
xbps-install -y dbus pam_rundir
xbps-install -y NetworkManager pipewire pipewire-devel rtkit alsa-pipewire wireplumber
xbps-install -y git make curl wget patch
xbps-install -y gcc tcc python lua luarocks LuaJIT 
xbps-install -y opendoas stow htop tree-sitter
xbps-install -y fzf ripgrep fd eza lf trash-cli rsync
xbps-install -y tar zip unzip 7zip lzip
xbps-install -y neovim mpv nsxiv maim
xbps-install -y imagemagick ffmpeg zathura zathura-pdf-poppler
xbps-install -y firefox keepassxc
xbps-install -y font-iosevka freefont-ttf fonts-roboto-ttf dejavu-fonts-ttf ttf-ubuntu-font-family
xbps-install -y noto-fonts-ttf noto-fonts-ttf-extra noto-fonts-emoji font-awesome6
xbps-install -y liberation-fonts-ttf font-inconsolata-otf xorg-fonts font-libertine-ttf
