#!/bin/sh

# Create a temporary directory for fonts and navigate into it
FONTDIR=$(mktemp -d /tmp/tmp-fonts.XXXXXX)  # Use mktemp for a unique directory
cd "$FONTDIR" || exit 1  # Exit if cd fails

# Download the font files
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.tar.xz
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.tar.xz

# Extract the downloaded tar files
tar -xf -- *.tar.xz

# Move the .ttf files to the system fonts directory
mv -- *.ttf /usr/share/fonts/TTF

# Update the font cache
fc-cache -f -v

# Clean up the temporary directory
rm -rf "$FONTDIR"
