cp /etc/network/interfaces /etc/network/interfaces.origin
nano /etc/network/interfaces

# Interface enp0s3
auto enp0s3
iface enp0s3 inet static
    address 192.168.1.34/24
    gateway 192.168.1.254
    
ifdown enp0s3
systemctl restart networking
