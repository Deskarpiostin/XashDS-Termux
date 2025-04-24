#!/bin/bash

echo "This is setup for your Xash3D server running on Termux, this might take a while.."

# proot-distro
pkg install proot-distro -y > /dev/null 2>&1

# debian installation
proot-distro install debian > /dev/null 2>&1

# xashds folder
cp -r /storage/emulated/0/xashds/ ~/ > /dev/null 2>&1

echo "Setup process is done! Now follow the next commands in your browser."
