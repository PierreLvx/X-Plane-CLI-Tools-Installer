#!/bin/bash

PACKAGE="x-plane_cli_tools"

# Check that we have an installation before doing anything
if [ -d ~/.$PACKAGE ]; then
	rm -rf ~/.$PACKAGE
	rm /usr/local/bin/{DDSTool,DSFTool,ObjConverter}
	echo "The X-Plane CLI tools have been successfully uninstalled."
	exit
fi

echo "Could not detect an installation of the X-Plane CLI tools. Exiting."
