# Ubuntu

#### Comment fixer IP serveur local?:

#### Comment autoriser root à se conneter en ssh:    
nano /etc/ssh/sshd_config   
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

###Se connecter a un serveur ubuntu distant shh ;
  ssh nomUtilisateur@IPserver

###pour configuer la date systeme il faut utiliser le protocole ntp
Installer ntp par la commande
apt-get install ntp

###le role de la commande chown ??
Il permet de changer le proprietaire du fichier soit le groupe soit utilisateur soit les deux

###Les type d’utilisateur sur linux

Chaque compte d'utilisateur peut être de trois types :
Utilisateur de l'ordinateur : Ce type de compte est le plus basique. Il permet à un usager d'utiliser l'ordinateur de manière non-privilégiée. L'usager ne peut qu'utiliser les programmes installés, exploiter le matériel déjà installé, et ne peut pas modifier la configuration du système d'exploitation Ubuntu ;
Administrateur : Ce type de compte est privilégié. Il permet à son usager de modifier la configuration du système d'exploitation, y compris l'installation et la suppression de logiciels, l'ajout et le retrait de matériel, et la personnalisation de tous les comptes d'utilisateurs. Ce type de compte ne devrait être attribué qu'à des administrateurs de l'ordinateur ;
Personnalisé : Ce type de compte ne peut être manuellement sélectionné. Il est attribué automatiquement lorsque des privilèges sont ajoutés ou retirés à un compte d'utilisateur, dans ses paramètres avancés (voir ci-dessous). Le type "Personnalisé" indique qu'un compte ne suit plus exactement les mêmes critères qui sont habituellement attribués aux types "Utilisateur de l'ordinateur" ou "Administrateur.
Pour changer le type de compte d'un compte d'utilisateur :
Sélectionnez le compte dans l'interface principale de users-admin ;
Appuyez sur le bouton [Modifier] situé à la droite de l'option Type de compte ;
Sélectionnez le type de compte que ce compte d'utilisateur doit se voir attribuer ;
Appuyez sur le bouton [Valider] pour enregistrer le changement.
(Aucune relation avec eclipse)

###Boot ubuntu en mode console
Change (edit) in /etc/default/grub file:
From:
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"

To:
GRUB_CMDLINE_LINUX_DEFAULT="text"

Now you must update the grub configs:
sudo update-grub

And its done! After reboot, to start the gui just login and type:
startx

source : http://askubuntu.com/questions/174312/how-can-i-set-my-ubuntu-12-04-lts-to-boot-to-console-without-gui

###ouvrir un port 
sudo ufw allow numPort/tcp

###Visualiser les port ouverts
netstat -nltp
