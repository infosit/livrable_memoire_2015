# Ubuntu

#### Comment fixer IP serveur local?:

#### Comment autoriser root à se conneter en ssh:    
Edit /etc/ssh/sshd_config   
' # Authentication:   
LoginGraceTime 120    
' #PermitRootLogin without-password   
PermitRootLogin yes   
StrictModes yes   
service ssh restart   

REF:  http://www.ehowstuff.com/how-to-allow-root-to-use-ssh-on-ubuntu-14-04   

###changer dhcp par static ip ubuntu
http://www.howtogeek.com/howto/ubuntu/change-ubuntu-server-from-dhcp-to-a-static-ip-address/
modifier le fichier /etc/network/interfaces et ajouter les lignes suivantes
auto eth0
iface eth0 inet static
        address 192.168.1.151
        netmask 255.255.255.0
        network 192.168.1.0
        broadcast 192.168.1.255
        gateway 192.168.1.1
            dns-nameservers 212.217.0.1
et redemarer l interface en utilisant 


