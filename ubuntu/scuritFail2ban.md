# Bannir les attaquants avec fail2ban:        
 	
root@serveur:~# apt-get install fail2ban    
Ouvrez ensuite le fichier 
nano /etc/fail2ban/jail.conf    
et modifiez la section [ssh],     
en changeant le numéro de port avec celui choisi comme port d’écoute pour SSH:    

[ssh]   
 
enabled  = true   
port     = ssh,sftp,NUMERO_PORT   
filter   = sshd   
logpath  = /var/log/auth.log    
maxretry = 3    
Ici, on ajoute l’écoute sur le port SFTP ainsi que le port SSH que l’on a redéfinit et on fixe le nombre d’essais possibles, avant blocage, à 3.    
Il faut maintenant recharger la configuration du service fail2ban avec la commande suivante:    
root@serveur:~# fail2ban-client reload    

l est possible que vous obteniez un message d’erreur du genre:      
  
ERROR No file found for /var/log/apache2/access*.log        

Cela est dû au fait que le serveur Web Apache n’est pas encore installé sur le serveur    

Pour vérifier que le service fonctionne correctement, tapez:    
   
root@serveur:~# fail2ban-client status    
Status    
|- Number of jail:	1   

Pour voir quelles adresses IP sont bannies, il faut lancer la commande suivante:    
root@serveur:~# iptables -L -n    
