# openupgrade

wget https://raw.githubusercontent.com/OpenUpgrade/OpenUpgrade/HEAD/scripts/migrate.py    
python migrate.py --config=[your openerp.conf] --database=[your database] --run-migrations=[your migrations]    


cd /opt/    
sudo python migrate.py --config="/home/abenbouchta/workspace/openerp-server.conf" --database="fcel7_250415" --run-migrations=8.0 

/home/abenbouchta/workspace

REF: https://doc.therp.nl/openupgrade/migrate.py.html       

sur le poste de abdellataif:

abenbouchta@dell:~$ cd /opt/    
python migrate.py --config="/home/abenbouchta/workspace/odoo7/openerp-server.conf" --database="fcel7_190415" --run-migrations=8.0

ATTENTION: 
il faut stoper openerp-server
