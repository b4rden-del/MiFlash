#!/bin/bash
curl -s https://raw.githubusercontent.com/nohajc/termux-adb/master/install.sh|bash
ln -s $PREFIX/bin/termux-fastboot $PREFIX/bin/fastboot
apt install figlet -y
