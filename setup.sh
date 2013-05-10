#
# This script setup chef solo environment from a fresh installed Ubuntu server
#

#
# Set locale
# (file /etc/default/locale)
sudo locale-gen en_US.UTF-8
sudo /usr/sbin/update-locale LANG=en_US.UTF-8
sudo dpkg-reconfigure locales

# ***** reboot here to update locales

#
# Install prerequisites
#
sudo apt-get update
sudo apt-get --no-install-recommends install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion pkg-config libffi-dev
sudo apt-get wget

# ree 1.8.7, 32-bit version here.  Use 64-bit if suitable.
sudo wget http://rubyenterpriseedition.googlecode.com/files/ruby-enterprise_1.8.7-2012.02_i386_ubuntu10.04.deb
sudo dpkg -i ruby-enterprise_1.8.7-2012.02_i386_ubuntu10.04.deb 

sudo apt-get install ruby-dev libopenssl-ruby rdoc ri irb build-essential ssl-cert git-core

#
# Install Rubygems, package management framework
# Check here for latest version: http://rubygems.org/pages/download
#

cd /tmp
wget http://production.cf.rubygems.org/rubygems/rubygems-2.0.3.tgz
tar zxf rubygems-2.0.3.tgz
cd /tmp/rubygems-2.0.3
sudo ruby setup.rb --no-format-executable
cd ~

sudo gem install --no-rdoc --no-ri chef

# Ready for cook now :)
# > cook.sh


