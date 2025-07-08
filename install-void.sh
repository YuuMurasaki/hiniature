#!/bin/sh

###################################################################################
# Edit visudo to use sudo as normal user
# Edit: /etc/doas.conf
# Setup RUNTIME: add this to /etc/pam.d/login at the end of 'session'
# -session	optional	pam_rundir.so
###################################################################################

xbps-install -Syu
xbps-install xorg xinit xrandr xsetroot xcompmgr xset xclip xwallpaper unclutter-xfixes
xbps-install base-devel libX11-devel libXft-devel libXinerama-devel libXrandr-devel ncurses
xbps-install freetype-devel fontconfig-devel
xbps-install dbus dbus-x11 pam_rundir
xbps-install NetworkManager pipewire pipewire-devel alsa-pipewire wireplumber
xbps-install git make curl wget patch
xbps-install gcc tcc python lua luarocks LuaJIT 
xbps-install opendoas stow htop tree-sitter
xbps-install fzf ripgrep fd
xbps-install eza lf trash-cli rsync
xbps-install tar zip unzip 7zip lzip
xbps-install neovim mpv nsxiv maim
xbps-install imagemagick ffmpeg
xbps-install zathura zathura-pdf-poppler
xbps-install firefox keepassxc
xbps-install font-iosevka font-hack-ttf freefont-ttf fonts-roboto-ttf dejavu-fonts-ttf
xbps-install ttf-ubuntu-font-family noto-fonts-ttf noto-fonts-ttf-extra
