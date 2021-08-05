cp /etc/network/interfaces /etc/network/interfaces.origin
nano /etc/network/interfaces

# Interface enp0s3
auto enp0s3
iface enp0s3 inet static
    address 192.168.1.34/24
    gateway 192.168.1.254
    
# Pour save et quitter nano Ctrl+X -> O -> Entrer

sudo ifdown enp0s3 # Si erreur -> changer d'adresse, nano /etc/network/interfaces -> sudo systemctl restart networking
sudo systemctl restart networking
