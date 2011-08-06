#!/bin/bash
#script to install all the required software

#update the system
sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get upgrade -y

#install required software
sudo apt-get install openssh-server vim-gnome curl git-core bison build-essential zlib1g-dev libssl-dev libreadline6-dev libxml2-dev autoconf libxslt1-dev libpq-dev postgresql mutt parcellite alarm-clock gtimelog gnome-do emacs23 irssi shutter gimp deluge vlc htop pidgin ctags gitk git-gui vifm -y

#install rvm
bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)
#tweak bashrc
mkdir ~/archives
cp ~/.bashrc ~/archives
sed  -e 's/\[ -z "\$PS1" \] && return/if \[\[ ! -z "\$PS1" \]\] ; then/g' ~/archives/.bashrc  > /tmp/newbash && echo 'fi' >> /tmp/newbash
cp /tmp/newbash ~/.bashrc
#install ruby 1.9.2
rvm install 1.9.2
rvm --default 1.9.2
rvm use 1.9.2

#clone dotfiles repo
mkdir ~/repos
cd ~/repos
git clone git://github.com/minhajuddin/dotfiles.git
cd ~/repos/dotfiles && ruby setup.rb #TODO: change the setup.rb file to setup.sh

