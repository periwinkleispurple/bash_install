cd /; clear
apt install -y sudo aptitude
sudo apt-get update -y && apt-get upgrade -y 

sudo aptitude install -y apache2
sudo systemctl enable apache2.service

sudo apt install -y php7.3 php7.3-{mysql,gd,mbstring,simplexml,curl,ldap,imap,apcu,xmlrpc,zip,intl,bz2}
sudo apt install -y php-{soap,gettext,apcu,xmlrpc,cas,mysqli,gd,xml}
sudo systemctl enable apache2.service

sudo aptitude install -y mariadb-server
systemctl enable mariadb.service
echo "CREATE DATABASE glpi" | mysql -u root 
echo "CREATE USER 'glpibdd'@'localhost' IDENTIFIED BY 'glpibddpass';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON glpi. * TO 'glpibdd'@'localhost';" | mysql -u root
