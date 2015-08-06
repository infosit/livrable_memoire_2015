# WKHTMLTOPDF
wkhtmlto pdf est supprimer de sourceforget.net il faut utiliser les liens de http://wkhtmltopdf.org/downloads.html     

   
### probleme de mise en page infosit.ma et 2b-groupe :  
allez sur configuration/technical/parametre/parametre systeme   
modifer la cle : web.base.url et ajouter comme valeur http://127.0.0.1:8069   
REF : https://github.com/odoo/odoo/issues/1105    
  
site web: http://wkhtmltopdf.org/downloads.html  	
version 0.12.0: http://sourceforge.net/projects/wkhtmltopdf/files/archive/0.12.0		
version 0.12.0 /32bit:http://sourceforge.net/projects/wkhtmltopdf/files/archive/0.12.0/wkhtmltox-linux-i386_0.12.0-03c001d.tar.xz/download
version 0.12.0 /32bit: http://sourceforge.net/projects/wkhtmltopdf/files/archive/0.12.0/wkhtmltox-linux-amd64_0.12.0-03c001d.tar.xz/download 

Installation pour 32bit:		
se loger en root (sudo -i)		
cd /tmp		
wget http://sourceforge.net/projects/wkhtmltopdf/files/archive/0.12.0/wkhtmltox-linux-i386_0.12.0-03c001d.tar.xz    
tar -xvf wkhtmltox-linux-i386_0.12.0-03c001d.tar.xz  
cd wkhtmltox  
cd bin/  
mv wkhtmltopdf /usr/bin/  
cd /usr/bin/  
sudo chown root:root wkhtmlto*  

Faire un teste:  
sudo su - openerp -s /bin/bash  
wkhtmltopdf  http://www.y-note.cm y-note.pdf

NON TERMINER:		
ERREUR ODOO:		

Report (PDF)		

Wkhtmltopdf failed (error code: -11). Message: QSslSocket: cannot resolve SSLv2_client_method		
QSslSocket: cannot resolve SSLv2_server_method		




Commande pour vérifier la version :
wkhtmltopdf -V 

Commande pour vérifier que wkhtmltopdf fonctionne:	
wkhtmltopdf http://www.odoo.com test-odoo.pdf 	

