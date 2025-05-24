#!/bin/bash

echo "Это настроит твой Xash3D сервер на Termux, может занять время.."
echo "Установка поддержки amd64 (спасибо mcagabe19, 1/4 команда в процессе сейчас"

#amd64
apt install git qemu-user-x86-64 blink proot-distro -y && git clone https://github.com/mcagabe19-stuff/termux-proot-x86 && cd termux-proot-x86 && bash ./movedistrosx86_64.sh

echo "Установка proot-distro (2/4 команда в процессе сейчас)"

# proot-distro
pkg install proot-distro -y > /dev/null 2>&1

echo "Установка Debian (3/4 команда в процессе сейчас)"

# debian installation
proot-distro install debian > /dev/null 2>&1

echo "Копирую XashDS папку (4/4 команда в процессе сейчас)"

# create a copy of xashds for debian
proot-distro login debian > /dev/null 2>&1
cp -r /storage/emulated/0/xashds/ ~/xashds > /dev/null 2>&1

echo "Установка окончена, теперь выполни следующие команды из README.md"
