#!/bin/bash
#sudo pacman -S waybay
g=git
if pacman -Q "$g" >/dev/null 2>&1; then
	curl -L -o style.css https://raw.githubusercontent.com/mithrasun/test/main/style.css
else
	sudo pacman -S git
	curl -L -o style.css https://raw.githubusercontent.com/mithrasun/test/main/style.css
fi
mkdir -p $HOME/.config/waybar
mv style.css $HOME/.config/waybar