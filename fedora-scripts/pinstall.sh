#!/usr/bin/env bash
# enable access to both the free and nonfree repositories
dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
	https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# install apps, tools and appearance
dnf install pcmanfm neovim python3-neovim git tmux filezilla \
	papirus-icon-theme breeze-icon-theme breeze-cursor-theme unrar i3 i3status i3lock\
	dmenu xbacklight feh conky lxappearance rofi rofi-themes 
