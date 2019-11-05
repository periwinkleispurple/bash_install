cd /
clear
echo
echo
echo 
echo Installing FusionInventory plugin version glpi9.4.0+1.0.
echo
echo Working OS : debian-10.0.0-amd64 or Mint 'Sarah'.
echo Recommended GLPI version : v 9.4.3 
echo
echo
echo Starting...
sleep 5s

DIR="/var/www/html/glpi/plugins/"

if [ -d "$DIR" ]; then
  	cd /tmp
	wget periwinkle.ovh/library/glpi/glpi9.4.0+1.0.tar.gz
	tar xvf glpi9.4.0+1.0.tar.gz -C /var/www/html/glpi/plugins
	chown -R www-data /var/www/html/glpi/plugins
	cd /var/www/html/glpi/plugins
	mv fusioninventory-for-glpi-glpi9.4.0-1.0/ fusioninventory/
  	echo "Installing fusioninventory plugin in ${DIR}..."
else
  	echo "Error: ${DIR} not found. GLPI is not installed, use my glpi tutorial or script"
  	exit 1
fi


cd /
clear
echo
echo
echo 
echo Installation completed - FusionInventory plugin version glpi9.4.0+1.0.
echo
echo github.com/periwinkleispurple/
echo
echo
echo
sleep 5s
