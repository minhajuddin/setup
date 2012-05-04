#!/bin/bash
#script to install all the required software

#update the system
sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get upgrade -y

#install required software
sudo apt-get install openssh-server vim-gnome curl git-core bison build-essential zlib1g-dev libssl-dev libreadline6-dev libxml2-dev autoconf libxslt1-dev libpq-dev postgresql mutt parcellite alarm-clock gtimelog irssi shutter gimp deluge vlc htop pidgin ctags gitk git-gui vifm libgmp3c2 libgmpxx4ldbl libgmp3-dev imagemagick libmagickcore-dev libmagickcore4 libmagickcore4-extra libmagickwand-dev libmagickwand4 -y

echo "install ghc using source, if you need haskell"

#install rvm
curl -L get.rvm.io | bash -s stable

#install ruby 1.9.2
exec bash
rvm install 1.9.2
