


# SSH
apt install openssh-server -y
systemctl start sshd

# Updates - LAMP
apt update && apt upgrade –y 
apt install –y apache2
systemctl start apache2
apt install php libapache2-mod-php php-mysql php-mbstring php-xml php-zip -y
systemctl restart apache2
apt install mariadb-server -y
sudo mysql -e "SET PASSWORD FOR root@localhost = PASSWORD('framboise');FLUSH PRIVILEGES;" 
printf "framboise\n n\n n\n y\n y\n y\n y\n" | sudo mysql_secure_installation

# OCS
sudo apt install libapache2-mod-php libapache2-mod-perl2 libapache-dbi-perl libapache-db-perl -y
sudo apt install php-soap php-curl php-json php-xml php-mbstring php-gd php-pclzip php-xmlrpc -y
sudo apt install cmake gcc make build-essential make -y

sudo mysql -u root -p
CREATE DATABASE ocsdb;
GRANT ALL PRIVILEGES ON ocsdb.* TO 'ocsuser'@'localhost' IDENTIFIED BY 'ocspassword';
FLUSH PRIVILEGES;
exit;

sudo apt install perl libnet-ip-perl libxml-simple-perl libarchive-zip-perl libxml-simple-perl libcompress-zlib-perl libdbi-perl libdbd-mysql-perl libnet-ip-perl libsoap-lite-perl libio-compress-perl libapache-dbi-perl libapache2-mod-perl2 libapache2-mod-perl2-dev libdbd-mysql-perl -y
sudo cpan install XML::Entities Apache2::SOAP Net::IP Apache::DBI Mojolicious Switch Plack::Handler Archive::Zip

wget -c https://github.com/OCSInventory-NG/OCSInventory-ocsreports/releases/download/2.6/OCSNG_UNIX_SERVER_2.6.tar.gz -O ocs.tar.gz
tar -xvzf ocs.tar.gz
cd OCSNG_UNIX_SERVER_2.6/
sudo nano setup.sh
# DB_SERVER_HOST="localhost"
# DB_SERVER_PORT="3306"
# DB_SERVER_USER="ocsuser"
# DB_SERVER_PWD="ocspassword"
sudo ./setup.sh
# Press Enter until the end.

sudo ln -s /etc/apache2/conf-available/ocsinventory-reports.conf /etc/apache2/conf-enabled/ocsinventory-reports.conf
sudo ln -s /etc/apache2/conf-available/z-ocsinventory-server.conf /etc/apache2/conf-enabled/z-ocsinventory-server.conf
sudo chown -R www-data:www-data /var/lib/ocsinventory-reports/
sudo nano /etc/apache2/conf-available/z-ocsinventory-server.conf
# PerlSetEnv OCS_DB_HOST localhost
# PerlSetEnv OCS_DB_PORT 3306
# PerlSetEnv OCS_DB_NAME ocsdb
# PerlSetEnv OCS_DB_LOCAL ocsdb
# PerlSetEnv OCS_DB_USER ocsuser
# PerlSetEnv OCS_DB_PWD ocspassword

sudo systemctl restart apache2

# http://your-server/ocsreports/
# MySQL Login ocsuser 
# MySQL PWD ocspassword
# MySQL DB ocsdb
# MySQL Host localhost

#login=admin and password=admin
rm /usr/share/ocsinventory-reports/ocsreports/install.php
# https://github.com/OCSInventory-NG/WindowsAgent/releases
# Used : Windows-Agent-2.6.0.1, enable verbose.

#AutoCert (will probably work 'w')
apt install certbot python3-certbot-apache -y
certbot certonly -d domain.xyz
systemctl restart apache2



