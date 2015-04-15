## les script:      
sifa.sh:   

#!/bin/bash   
cd /opt/odoo/addons   
(NT: pour le serveur cam: cd /home/odoo/odoo/addons)
rm -R sifa    
mkdir sifa    
cd sifa   
git clone https://github.com/abbenbouchta/sifa.git --depth 1 --branch master --single-branch .    
cd ..   
chmod -R 775 sifa   
chown -R odoo:odoo sifa   
service odoo-server restart   
exit 0    

noublie pas chmod +x sifa.sh

pour l'execusion :

./sifa.sh

meme pour sifac.sh et sifar.sh  
