#!/bin/bash

PACKAGE="x-plane_cli_tools"

# Platform selection.
if [ $# -eq 0 ]; then
    echo "\033[31mYou must specify a target platform (MAC or LIN).\033[m"
    exit
fi
if [ $1 != "MAC" ] && [ $1 != "LIN" ]; then
    echo "Invalid argument. Supported platforms are MAC and LIN."
    exit
else
    if [ $1 = "MAC" ]; then
        REMOTE="http://dev.x-plane.com/download/tools/xptools_mac_12-2.zip"
    fi
    if [ $1 = "LIN" ]; then
        REMOTE="http://dev.x-plane.com/download/tools/xptools_lin_12-2.zip"
    fi
fi

# Grab the package. Enable silent mode.
echo "Downloading tools..."
curl -s -o $PACKAGE.zip $REMOTE
echo "Download complete. Now extracting..."
# Extract the contents to a defined subfolder. Enable quiet mode.
unzip -q $PACKAGE.zip -d $PACKAGE
# Get rid of the archive
rm $PACKAGE.zip
# Creating a folder for them in the current user home directory
mkdir ~/.$PACKAGE
# Copying them to their new home
cp $PACKAGE/tools/{DDSTool,DSFTool,ObjConverter} ~/.$PACKAGE/
# Cleaning up
rm -rf $PACKAGE
echo "Extracted tools. Now linking to the binaries..."
ln -s ~/.$PACKAGE/DDSTool /usr/local/bin
ln -s ~/.$PACKAGE/DSFTool /usr/local/bin
ln -s ~/.$PACKAGE/ObjConverter /usr/local/bin
echo "\033[32mThe X-Plane CLI tools have been successfully installed.\033[m"
