apt-get update && apt-get upgrade ;
apt-get install unzip ;
apt-get install wget ;
wget https://raw.githubusercontent.com/shubidz001/files/shubidz001-patch-1/gcp.sh && wget https://raw.githubusercontent.com/shubidz001/files/shubidz001-patch-1/gcp1.sh
chmod +x gcp.sh && chmod +x gcp1.sh
./gcp.sh
wget https://raw.githubusercontent.com/shubidz001/files/shubidz001-patch-1/proftpd.sh
wget https://raw.githubusercontent.com/shubidz001/files/shubidz001-patch-1/hlds.sh 
wget https://raw.githubusercontent.com/shubidz001/files/shubidz001-patch-1/rehlds.sh
chmod +x proftpd.sh && chmod +x hlds.sh  && chmod +x rehlds.sh
./proftpd.sh
./hlds.sh
./rehlds.sh
cd
   echo "Powered by: shubidz."
	 echo "Done. Bye!"
