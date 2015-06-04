
il faut installer d'abord dependance pysftp:  
 intall d'abort pip (est un module python):     
 apt-get update  
 apt-get install python-pip python-dev build-essential    
 
 puis:  
 pip install pysftp  


cd /opt/odoo/addons  
mkdir auto_backup  
cd auto_backup  
git clone https://github.com/Yenthe666/auto_backup.git --depth 1 --branch 8.0 --single-branch .  
(RQ: enlever " ." s'il ya uin probleme)  
cd ..  
(RQ: auto_backup contient le dossier auto_backup):  
mv /opt/odoo/addons/auto_backup /opt/odoo/addons/auto_backup1  
mv /opt/odoo/addons/auto_backup1/auto_backup /opt/odoo/addons/auto_backup  
rm -R /opt/odoo/addons/auto_backup1  (supprimer auto_backup1)

cd /opt/odoo/addons   
chmod -R 775 auto_backup  
chown -R odoo:odoo auto_backup 

su - odoo -s /bin/bash  
mkdir backups

service odoo-server restart  
A-  configuration:  
1- configuration: Installer le module Database Auto-Backup:     
2- configuration / configuration / configure backup    
3- creer: (il creer automatique une configuration)    

B- Technical:  
- action planifiée
- Backup scheduler  
- modifier  
- Activer  
- completer parametrage  






 



