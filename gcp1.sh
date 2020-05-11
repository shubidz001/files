#!/bin/bash
mkdir -p /usr/local/gcp ; cd /usr/local/gcp; mkdir installs ;
# Download Remote Software
wget https://raw.githubusercontent.com/shubidz001/files/shubidz001-patch-1/gamecp-remote-dzhosting.zip ;
unzip gamecp-remote-dzhosting.zip ; rm -rf gamecp-remote-dzhosting.zip ;chmod +x ./gamecp bin32/gamecp_i386 bin64/gamecp_x64 ;
# Install Service
if [ ! -f /etc/init.d/gamecp ] ; then cp -f gamecp /etc/init.d/gamecp; fi;
if [ -f /sbin/chkconfig ] ; then chkconfig --add gamecp ; chkconfig --level 345 gamecp on ; fi ;
if [ -f /usr/sbin/update-rc.d ] ; then update-rc.d gamecp defaults; update-rc.d gamecp enable; fi ;
# Create Configuration File
if [ -f /usr/local/gcp/gamecp.ini ] ; then rm -f /usr/local/gcp/gamecp.ini; fi;
cat > /usr/local/gcp/gamecp.ini <<DELIM
url=http://login.dzhosting.al
serverid=3
passphrase=B_CDCwEFD
debug=off
listenport=240
user_group=default
DELIM
# Open Firewall
if [ -f /sbin/iptables ] ; then  iptables -I INPUT -p tcp --dport 240 -j ACCEPT; iptables -I INPUT -p udp --dport 240 -j ACCEPT; iptables-save; fi ;
# Start GameCP Remote
/etc/init.d/gamecp start
