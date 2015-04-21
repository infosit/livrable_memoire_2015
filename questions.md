### Questions:    
- Comment changer le port defaut 8069 de odoo sur ubuntu?
- Comment changer le port defaut 8069 de odoo sur eclipse?:   
1- Clic droite sur openerp-server.py    
2- run as / run configuration/    
3- ajouter --xmlrpc-port=8071 sur la case programme arguments du volet (x)= argument    


- Comment configurer le port 8069 to 80 ?   
nano /etc/rc.local    
ajouter cette ligne:    
iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8069    
reboot    

- Comment resoudre le pb wkhtmltopdf?
- Comment autoriser root à se conneter a distant en ssh?
nano /etc/ssh/sshd_config
' # Authentication:
LoginGraceTime 120
' #PermitRootLogin without-password
PermitRootLogin yes
StrictModes yes
service ssh restart

REF: http://www.ehowstuff.com/how-to-allow-root-to-use-ssh-on-ubuntu-14-04 

- Configuration localisation ubuntu  
1ere solution:   
Ce est un problème commun si vous vous connectez à distance, la solution est de ne pas transmettre vos paramètres régionaux.  
Editer le fichier /etc/ssh/ssh_config :    
nano /etc/ssh/ssh_config   
et commenter la ligne: SendEnv LANG LC_*. 
sudo pg_createcluster 9.3 main --start  
/etc/init.d/postgres restart  
reference: http://askubuntu.com/questions/463594/starting-postgresql-server-postgres-user-unknown

- Comment configurer DNS? BIND
- comprendre openupgrade : migration


