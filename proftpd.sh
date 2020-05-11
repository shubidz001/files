#!/bin/bash
cd /etc/proftpd
rm -rf proftpd.conf
wget https://raw.githubusercontent.com/shubidz001/files/shubidz001-patch-1/proftpd.conf
service proftpd stop
service proftpd start
cd
   echo "Powered by: shubidz."
	 echo "Done. Bye!"
