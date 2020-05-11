#!/bin/bash
cd /usr/local/gcp/installs/
apt-get install wget
wget http://185.183.97.171/hlds/hlds.zip
apt-get install unzip
unzip hlds.zip
rm -rf hlds.zip
cd /usr/local/gcp/installs/hlds
chmod +x hlds_run && chmod +x hlds_linux
cd
   echo "Powered by: shubidz."
	 echo "Done. Bye!"