cd /; clear
apt install -y sudo aptitude
sudo apt-get update -y && apt-get upgrade -y 

sudo aptitude install -y apache2
sudo systemctl enable apache2.service

sudo apt install -y php7.3 php7.3-{mysql,gd,mbstring,simplexml,curl,ldap,imap,apcu,xmlrpc,zip,intl,bz2}
sudo apt install -y php-{soap,gettext,apcu,xmlrpc,cas,mysqli,gd,xml}
/etc/init.d/apache2 restart

sudo aptitude install -y mariadb-server
systemctl enable mariadb.service
echo "CREATE DATABASE glpi" | mysql -u root 
echo "CREATE USER 'glpibdd'@'localhost' IDENTIFIED BY 'glpibddpass';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON glpi. * TO 'glpibdd'@'localhost';" | mysql -u root

wget https://github.com/glpi-project/glpi/releases/download/9.5.5/glpi-9.5.5.tgz
tar xzf glpi-9.5.5.tgz
cp -R glpi /usr/share
chown -R root.www-data /usr/share/glpi
chown -R www-data /var/www/glpi
chmod -R 775 /usr/share/glpi
ln -s /usr/share/glpi /var/www/html/
/etc/init.d/apache2 restart

hostname -i 
x.x.x.x/glpi
usr : glpi
pwd : glpi
db : localhost
dbuser : glpibdd
dbpwd : glpibddpwd
