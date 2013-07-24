#
# This script setup chef solo environment from a fresh installed Ubuntu server
#
# reference:
#   http://www.mechanicalrobotfish.com/blog/2013/01/01/configure-a-server-with-chef-solo-in-five-minutes/
#
# This has to be run as root on server
# sudo su -

# Step 0:
sudo su -

# Step 1:
locale-gen en_US.UTF-8
/usr/sbin/update-locale LANG=en_US.UTF-8 
/usr/sbin/update-locale LC_ALL=en_US.UTF-8 
dpkg-reconfigure locales

# Step 2:
# Reboot
shutdown -r now

# Step 3:
apt-get update
apt-get install curl
apt-get --no-install-recommends install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion pkg-config libffi-dev

# Step 4:
# sudo-ed
\curl -L https://get.rvm.io | sudo bash -s stable

# Step 5:
# open another bash.

source ~/.rvm/scripts/rvm
rvm requirements

rvm install ree-1.8.7

rvm use ree-1.8.7 --default

gem install --no-rdoc --no-ri chef


