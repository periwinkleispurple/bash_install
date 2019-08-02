cd /
clear
echo
echo
echo 
echo Installing FusionInventory plugin version glpi9.4.0+1.0.
echo
echo Recommended OS : debian-10.0.0-amd64.
echo
echo
echo
sleep 5s

DIR="/var/www/html/glpi/plugins/"

if [ -d "$DIR" ]; then
  	cd /tmp
	wget sewesty.com/fusioninventory/glpi9.4.0+1.0.tar.gz
	tar xvf glpi9.4.0+1.0.tar.gz -C /var/www/html/glpi/plugins
	chown -R www-data /var/www/html/glpi/plugins
	cd /var/www/html/glpi/plugins
  	echo "Installing fusioninventory plugin in ${DIR}..."
else
  	echo "Error: ${DIR} not found. GLPI is not installed, use my glpi_standalone_v-1-7-19.sh or glpi_fusioninventory_v1-7-19.sh"
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