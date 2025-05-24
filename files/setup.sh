#!/bin/bash

echo "This is setup for your Xash3D server running on Termux, this might take a while.."
echo "Installing x86_64 support (thanks mcagabe19!, 1/4 command are processed right now)"

# amd64
apt install git qemu-user-x86-64 blink proot-distro -y && git clone https://github.com/mcagabe19-stuff/termux-proot-x86 && cd termux-proot-x86 && bash ./movedistrosx86_64.sh > /dev/null 2>&1

echo "Installing proot-distro (2/4 command are processed right now)"

# proot-distro
pkg install proot-distro -y > /dev/null 2>&1

echo "Installing Debian (3/4 command are processed right now)"

# debian installation
proot-distro install debian > /dev/null 2>&1

echo "Copying XashDS folder (4/4 command are processed right now)"

# create a copy of xashds for debian
proot-distro login debian > /dev/null 2>&1
cp -r /storage/emulated/0/xashds/ ~/xashds > /dev/null 2>&1

echo "Setup process is done! Now follow the next commands in your browser."
