#
# This script setup chef solo environment from a fresh installed Ubuntu server
#
# This has to be run as root on server
# sudo su - 
sudo apt-get update

sudo apt-get install curl

sudo apt-get --no-install-recommends install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion pkg-config libffi-dev

\curl -L https://get.rvm.io | sudo bash -s stable

sudo source ~/.rvm/scripts/rvm
sudo rvm requirements

sudo rvm install ree-1.8.7

sudo rvm use ree-1.8.7 --default

sudo gem install --no-rdoc --no-ri chef


