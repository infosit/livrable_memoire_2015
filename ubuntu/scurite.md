## SSH    
REF: http://justincoutarel.fr/2014/05/securisation-minimale-dun-serveur-dedie-kimsufi-sous-ubuntu-server-14-04-lts/   

# 1- Créer un compte utilisateur:   
root@serveur:~# useradd -m user1 

root@serveur:~# passwd user1 
Entrez le nouveau mot de passe UNIX :   
Retapez le nouveau mot de passe UNIX :    
passwd : le mot de passe a été mis à jour avec succès   
    
root@serveur:~# su - user1    
user1@ubuntu:~$pwd  (repertoire courant)        

L’utilisateur que nous avons créé plus haut ne fait pas encore partie du groupe sudo.       
Pour remédier à cela, entrez la commande suivante:      
root@serveur:~# gpasswd -a user1  sudo     
      
# 2- Modifier le comportement de la commande sudo:      

Nous pouvons avoir accès au compte root depuis SSH mais également en utilisant les commandes su et sudo lorsque l’on est connecté au serveur en tant que simple utilisateur.     
La commande su  demandera systématiquement le mot de passe root tandis que sudo est configurée, par défaut, à autoriser les comptes utilisateurs qui font partie du groupe sudo à basculer en tant qu’utilisateur root.     
Ainsi, si votre compte utilisateur est compromis, l’attaquant pourra facilement se connecter en tant que root et faire plus de dégâts. Pour éviter cela, nous allons modifier la configuration de sudo.        

Pour cela, entrez la commande suivante:     
root@serveur:~# visudo      

Ajoutez la ligne suivante à la fin du fichier:      
Defaults rootpw,timestamp_timeout=0     



