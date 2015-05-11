##Installer Eclipse Luna sur ubuntu 14.04

1-Installer environnement java depuis logitheque ubuntu par une simple recherche sur openjdk et choisir openjdk java 7   
2-Telecharger Eclipse(Luna) sur le site officiel : https://projects.eclipse.org/releases/luna veuillez choisir Eclipse IDE for Java Developers 32 ou 64 bit dépend de votre systeme    
3-Apres l’extraction deplacer le dossier sur le chemin /opt    (sudo cp -R '/home/user/Bureau/eclipse' '/opt')    
4-Installer le plugin PyDev en allant sur   
Help -> Marketplace    -> Entrer PyDev dans la barre de recherche  
Et apres Eclipse va completer la tache                                                             
Confirmer que cette application est fiable en cochant la case donnée    
et voila Eclipse est pret a l’utiliser pour developper en Python    
5-Creer un projet python. on lui donne le nom odoo.     
6-On prend les fichier et dossiers q’on telecharger et on les deplace dans le projet q’on a creé (vous le trouver sur workspace de votre eclipse)   
7-On fait clique drois sur le projet dans eclipse et on choisi refresh    
8-Renommer ensuite le fichier odoo-server par odoo-server.py    
9-Couper le fichier odoo-server.conf de l’emplacement debian(dossier dans le prjet) vers la racine du projet    
10-Modifier odoo-server.conf en lui donnant les valeurs suivantes   
[options]   
; This is the password that allows database operations:   
admin_passwd = admin    
db_host = False   
db_port = False   
db_user = odoo    
db_password = True    
addons_path = cheminDeVotreWorkspace/odoo/addons    
Remarque : Vous devez creer un utilisateur sur postgreSql qui porte le meme nom que l’utilisateur system    

