#!/bin/bash
#script to install all the required software

#update the system
sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get upgrade -y

#install required software
sudo apt-get install openssh-server vim-gnome curl git-core bison build-essential zlib1g-dev libssl-dev libreadline6-dev libxml2-dev autoconf libxslt1-dev libpq-dev postgresql mutt parcellite alarm-clock gtimelog gnome-do emacs23 irssi shutter gimp deluge vlc htop pidgin ctags gitk git-gui vifm libgmp3c2 libgmpxx4ldbl libgmp3-dev freeglut3 freeglut3-dev libxrandr-dev X11-xserver-utils -y

echo "install ghc using source"

#install rvm
bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
#tweak bashrc
mkdir ~/archives
mv ~/.bashrc ~/archives/
#install ruby 1.9.2
exec bash
rvm install 1.9.2
rvm --default 1.9.2
rvm use 1.9.2

#clone dotfiles repo
mkdir ~/repos
cd ~/repos
git clone git://github.com/minhajuddin/dotfiles.git
cd ~/repos/dotfiles && ruby setup.rb #TODO: change the setup.rb file to setup.sh

