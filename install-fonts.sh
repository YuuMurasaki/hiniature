#!/bin/sh

# Create a temporary directory for fonts
FONTDIR=$(mktemp -d /tmp/tmp-fonts.XXXXXX)  # Use mktemp for a unique directory

# Download the font files into the temporary directory
FONTS="JetBrainsMono Hack FiraCode"

for font in $FONTS; do
    curl -L -o "$FONTDIR/$font.tar.xz" "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/$font.tar.xz"
done

# Extract the downloaded tar files
tar -xf "$FONTDIR"/*.tar.xz -C "$FONTDIR"

# Move the .ttf files to the system fonts directory, forcing replacement if files exist
mv -f -- "$FONTDIR"/*.ttf /usr/share/fonts/TTF

# Update the font cache
fc-cache -f -v

# Clean up the temporary directory
rm -rf "$FONTDIR"
