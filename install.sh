#!/bin/bash

apt-get update && apt-get upgrade ;
apt-get install unzip ;
apt-get install wget ;
wget https://github.com/shubidz001/files/blob/master/gcp.sh && wget https://github.com/shubidz001/files/blob/master/gcp1.sh
chmod +x gcp.sh && chmod +x gcp1.sh
./gcp.sh
wget https://github.com/shubidz001/files/blob/master/proftpd.sh && https://github.com/shubidz001/files/blob/master/hlds.sh
chmod +x proftpd.sh && chmod +x hlds.sh
./proftpd.sh
./hlds.sh
cd
   echo "Powered by: shubidz."
	 echo "Done. Bye!"