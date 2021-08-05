#!/bin/bash



#The script must be run as root

if [ "$(id -u)" -ne 0 ]; then

echo 'This script must be run by root' >&2

exit 1

fi



#Net-tools is used to "query" the current network configuration, installs it.

apt install net-tools -y



#Retrieves the interface name and stores to variable

interface="${ip link | awk '$0 !~ "lo|vir|wl|br|dock|veth|^[^0-9]"{print $2}' | sed 's/://'}"



#"Queries" the interface to retrieve address, netmask, gateway

address="${ifconfig "${interface}" | awk '/netmask/ {print $2}'}"

netmask="${ifconfig "${interface}" | awk '/netmask/ {print $4}'}"

gateway="${ifconfig "${interface}" | awk '/netmask/ {print $6}'}"



#Writes to a new file created into /etc/network/interfaces.d

echo "iface ${interface} inet static" > //etc/network/interfaces.d/"${interface}"

echo "address ${address}" >> //etc/network/interfaces.d/"${interface}"

echo "netmask ${netmask}" >> //etc/network/interfaces.d/"${interface}"

echo "gateway ${gateway}" >> //etc/network/interfaces.d/"${interface}"



#Here I struggled, passing the content directly would result in an empty file so a temp file is created

cat /etc/network/interfaces | sed "s/iface ${interface} inet dhcp//g" > /tmp/network.txt

mv /tmp/network.txt /etc/network/interfaces



#Allows to stop the reboot command during 20 seconds

echo "-----------------------------------"

echo "ALERT: This script will issue a reboot in 20 seconds"

echo "Press Crtl+C to stop the execution ..."

echo "-----------------------------------"

sleep 20

shutdown -r now
