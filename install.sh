#!/bin/bash

# The remote URL. We should be able to change this line only between versions.
REMOTE="http://dev.x-plane.com/download/tools/xptools_mac_12-2.zip"
PACKAGE="x-plane_cli_tools"

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
echo "The X-Plane CLI tools have been successfully uninstalled."
