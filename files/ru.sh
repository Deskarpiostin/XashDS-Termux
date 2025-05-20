#!/bin/bash

echo "Это настроит твой Xash3D сервер на Termux, может занять время.."
echo "Установка proot-distro (1/3 команда в процессе сейчас)"

# proot-distro
pkg install proot-distro -y > /dev/null 2>&1

echo "Установка Debian (2/3 команда в процессе сейчас)"

# debian installation
proot-distro install debian > /dev/null 2>&1

echo "Копирую XashDS папку (3/3 команда в процессе сейчас)"

# create a copy of xashds for debian
proot-distro login debian > /dev/null 2>&1
cp -r /storage/emulated/0/xashds/ ~/xashds > /dev/null 2>&1

echo "Установка окончена, теперь выполни следующие команды из README.md"
