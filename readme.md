#X-Plane Command Line Tools Installer

This is a quick script to install the [X-Plane command line tools](http://developer.x-plane.com/tools/xptools/), so that you can use them directly from the terminal in your development process, and start to automate your production pipeline quickly.

##Features

* **DSFTool** : converts DSF files to text format and back.
* **DDSTool** : converts PNG files to DDS format.

##Installating / Updating

###Mac OS

Simply open up Terminal (found under `Applications/Utilities`) and run the following command:

`curl -s https://raw.githubusercontent.com/PierreLvx/X-Plane-CLI-Tools-Installer/master/install.sh | sh -s MAC`

###Linux

`curl -s https://raw.githubusercontent.com/PierreLvx/X-Plane-CLI-Tools-Installer/master/install.sh | sh -s LIN`

##Uninstalling

On both platforms:

`curl -s https://raw.githubusercontent.com/PierreLvx/X-Plane-CLI-Tools-Installer/master/uninstall.sh | sh`

##TODO

- [-] Dependencies (`curl` and `unzip`) checking on Linux.

##Contributing

By all means, have at it! Raise pull requests as you see fit, and do share your suggestions.

##License

This code is licensed under the MIT license. See the enclosed `license.txt` for details.