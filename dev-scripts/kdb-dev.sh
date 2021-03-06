#!/bin/bash
#
# Script to Install
# Linux System Tools & kdbq Essentials (32-bit)
# 
# In development script!! (use stable version `lg-kdb-slim.sh`)
#
#
# (c) Parv Patel
#

# > uname -a 
# 32-bit "Linux discworld 2.6.38-8-generic #42-Ubuntu SMP Mon Apr 11 03:31:50 UTC 2011 i686 i686 i386 GNU/Linux"
# 64-bit "Linux discworld 2.6.38-8-generic #42-Ubuntu SMP Mon Apr 11 03:31:50 UTC 2011 x86_64 x86_64 x86_64 GNU/Linux"
#
# requires 32-bit libraries for 32-bit kdb 
# (https://www.unixmen.com/enable-32-bit-support-64-bit-ubuntu-13-10-greater/)
dpkg --add-architecture i386

# GENERAL LINUX
apt-get update  # updates the package index cache
apt-get upgrade -y
apt-get install -y git screen htop wget curl emacs unzip gzip emacs rlwrap  # installs system tools
apt-get upgrade -y bash  # upgrades bash if necessary
apt-get clean  # cleans up the package index cache

# kdb specific
apt-get install -y libssl1.0.0:i386  # compatible ssl 1.0.0  
cd /usr/lib/i386-linux-gnu/
ln -s libssl.so.1.0.0 libssl.so  # link libssl.so.1.0.0 --> libssl.so

# intall kdbq
cd ~
wget https://kx.com/347_d0szre-fr8917_llrsT4Yle-5839sdX/3.6/linuxx86.zip
unzip linuxx86.zip
rm linuxx86.zip  # clean-up 

# install q-mode (for emacs q)
wget https://raw.githubusercontent.com/psaris/q-mode/master/q-mode.el


# install odbc for kdb (https://code.kx.com/q/interfaces/q-client-for-odbc/)
cd q/l32/
wget https://raw.githubusercontent.com/KxSystems/kdb/master/c/odbc.k  # get odbc.k
wget https://github.com/KxSystems/kdb/raw/master/l32/odbc.so  # linux 32-bit odbc.so
wget https://github.com/KxSystems/kdb/raw/master/l32/qcon 

cd ~
apt-get install -y unixodbc:i386
apt-get install -y odbc-postgresql:i386


# install essential kdb packages
cd q/l32/
wget https://raw.githubusercontent.com/jonathonmcmurray/reQ/master/req/req.q  # req.q
wget https://raw.githubusercontent.com/aa1024/datetimeQ/master/libs/dtf.q  #dtf.q
wget https://raw.githubusercontent.com/AquaQAnalytics/grafana-kdb/master/grafana.q  # AquaQ grafana adapter
mv grafana.q gfa.q


# kdb-slack integration


