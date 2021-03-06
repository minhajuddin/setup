#!/bin/bash
#script to install all the required software

#update the system
sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get upgrade -y

#install required software
sudo apt-get install openssh-server vim-gnome curl git-core bison build-essential zlib1g-dev libssl-dev libreadline6-dev libxml2-dev autoconf libxslt1-dev libpq-dev postgresql mutt parcellite alarm-clock gtimelog irssi shutter gimp deluge vlc htop pidgin ctags gitk git-gui vifm libgmp3c2 libgmpxx4ldbl libgmp3-dev imagemagick libmagickcore-dev libmagickcore4 libmagickcore4-extra libmagickwand-dev libmagickwand4 -y
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion pkg-config -y
sudo apt-get install libedit-dev libbsd-dev libgmp3-dev zlib1g-dev freeglut3-dev
sudo apt-get install meld autojump trayer xloadimage banshee gnome-do beanstalkd redis-server -y
sudo apt-get install libqt4-dev libqtwebkit-dev -y


echo "install ghc using source, if you need haskell"
echo "install dropbox"

#install rvm
curl -L get.rvm.io | bash -s stable

#install ruby 1.9.2
exec bash
rvm install 1.9.2
