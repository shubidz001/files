#!/bin/bash
       if [ "$(whoami)" != "root" ]
       then
           echo "You need to login as root to use this script! Sorry!";
           exit 1
       fi
       if [ -e /root/gamecp.sh ]
       then
           echo "GOOD TO GO!"
       else
           echo 'Krijo /root/gamecp.sh dhe ekzekutoje scripting prap';
	   exit 1
       fi
apt-get update -y; apt-get upgrade -y; apt-get dist-upgrade -y; apt-get autoremove -y
apt-get install build-essential libssl-dev curl nano wget zip unzip git wget nano mlocate screen whois dnsutils iftop htop -y
apt-get install lib32z1 -y
apt-get install lib32ncurses5 -y
apt-get install lib32bz2-1.0 -y
apt-get install lib32gcc1 -y
apt-get install proftpd -y
apt-get install ia32-libs -y
echo '127.0.0.1 billing.gamecp.com billing1.gamecp.com billing2.gamecp.com billing3.gamecp.com' >> /etc/hosts
clear

apt-get install apache2 -y
apt-get install php5 -y
apt-get install php5-curl php5-mcrypt php5-mysql -y;
service apache2 restart
mkdir -p /var/www/html/modules/servers/licensing/
echo '<?php
echo "gamecp_is_a_small_company_please_dont_rip_us_off_we_work_really_hard";
?>' > /var/www/html/modules/servers/licensing/remote.php
chown -R www-data:www-data /var/www/html/modules/servers/licensing/remote.php
clear

curl -s -v 'https://gist.githubusercontent.com/theraw/1d563643f01231bcc54910551ec6f274/raw/7f31db06d8071a3f14e81b681659f174113deb84/proftpd.conf' > /etc/proftpd.conf
service proftpd stop
service proftpd start

chmod +x /root/gamecp.sh
bash /root/gamecp.sh

cd /usr/local/gcp/installs/; wget http://185.183.97.171/hlds/hlds.zip; unzip hlds.zip; rm -rf hlds.zip; cd /usr/local/gcp/installs/hlds; chmod +x hlds_run && chmod +x hlds_linux
cd /usr/local/gcp/installs/; wget http://185.183.97.171/hlds/rehlds.zip; unzip rehlds.zip; rm -rf rehlds.zip; cd /usr/local/gcp/installs/rehlds; chmod +x hlds_run && chmod +x hlds_linux
echo 'Done!';
