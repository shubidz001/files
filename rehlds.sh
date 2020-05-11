#!/bin/bash
sudo apt-get install lib32gcc1 screen wget
cd /usr/local/gcp/installs/
apt-get install wget
wget http://185.183.97.171/hlds/rehlds.zip
apt-get install unzip
unzip rehlds.zip
rm -rf rehlds.zip
cd /usr/local/gcp/installs/rehlds
chmod +x hlds_run && chmod +x hlds_linux
cd
   echo "Powered by: shubidz."
	 echo "Done. Bye!"