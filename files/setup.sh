#!/bin/bash

echo "This is setup for your Xash3D server running on Termux, this might take a while.."
echo "Installing proot-distro (1/3 command are processed right now)"

# proot-distro
pkg install proot-distro -y > /dev/null 2>&1

echo "Installing Debian (2/3 command are processed right now)"

# debian installation
proot-distro install debian > /dev/null 2>&1

echo "Copying XashDS folder (3/3 command are processed right now)"

# create a copy of xashds for debian
proot-distro login debian > /dev/null 2>&1
cp -r /storage/emulated/0/xashds/ ~/xashds > /dev/null 2>&1

echo "Setup process is done! Now follow the next commands in your browser."
