### il faut editer le fichier /etc/postgresql/9.3/main/postgresql.conf  
1/ changer la ligne   
listen_addresses = 'localhost' pour qu'il soit listen_addresses = '*'  
2/ ensiute editer le fichier /etc/postgresql/9.3/main/pg_hba.conf  
en ajoutant la ligne suivante a la fin   
host all all 192.168.1.0/24 md5  (cas reseau local)  
host all all 0.0.0.0/0 md5   (cas reseau distant vps)  

service postgresql restart  
apres on peut acceder au serveur via PgAdmin   
sauvegarder une BD via PgAdmin:  

 
