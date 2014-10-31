#!/bin/bash

PACKAGE="x-plane_cli_tools"

# Check that we have an installation before doing anything
if [ -d ~/.$PACKAGE ]; then
	rm -rf ~/.$PACKAGE
	rm /usr/local/bin/{DDSTool,DSFTool,ObjConverter}
	echo "\033[32mThe X-Plane CLI tools have been successfully uninstalled.\033[m"
	exit
fi

echo "\033[31mCould not detect a previous installation of the X-Plane CLI tools.\033[m"
