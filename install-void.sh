#!/bin/sh

###################################################################################
# Setup $XDG_RUNTIME_DIR
# edit /etc/pam.d/login
# add at the end of 'session'
# -session    optional    pam_rundir.so
###################################################################################
# Setup pipewire
# mkdir -p /etc/pipewire/pipewire.conf.d
# ln -s /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/
# ln -s /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d/
# mkdir -p /etc/alsa/conf.d
# ln -s /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d
# ln -s /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d
###################################################################################
# Setup doas
# touch /etc/doas.conf
###################################################################################

xbps-install -Syu
xbps-install -y xorg xinit xrandr xsetroot xcompmgr xdotool xset xclip xwallpaper xwininfo xprop
xbps-install -y base-devel libX11-devel libXft-devel libXinerama-devel libXrandr-devel ncurses
xbps-install -y freetype-devel fontconfig-devel xdg-utils xdg-user-dirs polkit socat
xbps-install -y dbus dbus-x11 pam_rundir NetworkManager moreutils
xbps-install -y pipewire pipewire-devel rtkit alsa-pipewire wireplumber helvum
xbps-install -y git make curl wget patch unclutter-xfixes
xbps-install -y gcc tcc python lua luarocks LuaJIT 
xbps-install -y opendoas stow htop tree-sitter
xbps-install -y fzf ripgrep fd eza lf trash-cli rsync
xbps-install -y tar zip unzip 7zip lzip
xbps-install -y neovim mpv nsxiv maim
xbps-install -y ImageMagick ffmpeg zathura zathura-pdf-poppler
xbps-install -y firefox keepassxc
xbps-install -y font-iosevka freefont-ttf fonts-roboto-ttf dejavu-fonts-ttf ttf-ubuntu-font-family
xbps-install -y liberation-fonts-ttf font-inconsolata-otf xorg-fonts font-libertine-ttf font-awesome6
xbps-install -y noto-fonts-emoji noto-fonts-cjk noto-fonts-cjk-variable noto-fonts-ttf noto-fonts-ttf-extra noto-fonts-ttf-variable
