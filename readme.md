#X-Plane Command Line Tools Installer

This is a quick script to install the [X-Plane command line tools](http://developer.x-plane.com/tools/xptools/), currently on Mac OS X and Linux only, so that you can use them directly from the terminal in your development process, and/or automate your production pipeline slightly more easily.

###Features

* DSFTool – converts DSF files to text format and back.
* DDSTool – converts PNG files to DDS format.
* ObjConverter – converts 3DS and DXF files to X-Plane 8 OBJ format.

###Usage

Simply open up Terminal (found under Applications/Utilities) and run the following commands:

**To install:**

On Mac OS X:

`curl -s https://raw.githubusercontent.com/PierreLvx/X-Plane-CLI-Tools-Installer/master/install.sh | sh -s MAC`

On Linux:

`curl -s https://raw.githubusercontent.com/PierreLvx/X-Plane-CLI-Tools-Installer/master/install.sh | sh -s LIN`

**To uninstall:**

It's the same on both platforms:

`curl -s https://raw.githubusercontent.com/PierreLvx/X-Plane-CLI-Tools-Installer/master/uninstall.sh | sh`

That's it :)

###TODO

* Though the latest version of the CLI tools has been released in February 2012, eventually, this script shall be extended to act as an updater too.
* Dependencies (`curl` and `unzip`) checking on Linux.
* I do not plan on supporting Windows, but I welcome contributions.

###Contributing

By all means, have at it! Raise pull requests as you see fit, and do share your suggestions.

###License

This code is licensed under the MIT license. See the enclosed license.txt for details.