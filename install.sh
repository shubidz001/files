apt-get update; apt-get upgrade -y; ap-get dist-upgrade -y
apt-get install wget; && apt-get install unzip;
wget https://raw.githubusercontent.com/shubidz001/files/shubidz001-patch-1/gcp.sh 
wget https://raw.githubusercontent.com/shubidz001/files/shubidz001-patch-1/gcp1.sh
wget https://raw.githubusercontent.com/shubidz001/files/shubidz001-patch-1/proftpd.sh
wget https://raw.githubusercontent.com/shubidz001/files/shubidz001-patch-1/hlds.sh 
wget https://raw.githubusercontent.com/shubidz001/files/shubidz001-patch-1/rehlds.sh
chmod +x gcp.sh
chmod +x gcp1.sh
chmod +x proftpd.sh
chmod +x hlds.sh
chmod +x rehlds.sh
./gcp.sh
./gcp1.sh
./proftpd.sh
./hlds.sh
./rehlds.sh
