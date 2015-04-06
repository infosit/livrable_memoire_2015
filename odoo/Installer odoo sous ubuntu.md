### Installer odoo sous ubuntu

Tout d’abord il faut faire  
sudo apt-get update    
sudo apt-get dist-upgrade  
## Creer un utilisateur system  
sudo adduser --system --home=/opt/odoo --group odoo  
Pour se connecter avec cet utilisateur. en utilise :  
sudo su - odoo -s /bin/bash 
    Faire exit  
## Installer et configurer postgreSql  
sudo apt-get install postgresql  
### changer l’utilisateur to postgre afin d’avoir les privilege pour gerer le databases  
sudo su - postgres  
Creer un utilisateur de la base de donnees. Il va te demander de taper un mot de passe. Verifier que cette utilisateur a le meme nom que l’utilisateur qu’on a creé dans notre est : odoo  
createuser --createdb --username postgres --no-createrole --no-superuser --pwprompt odoo  
quiter par tapper exit  
Installer les librairies necessaires de python en utilisant la commande suivante   
sudo apt-get install python-dateutil python-decorator python-docutils python-feedparser \  
python-gdata python-gevent python-imaging python-jinja2 python-ldap python-libxslt1 python-lxml \  
python-mako python-mock python-openid python-passlib python-psutil python-psycopg2 python-pybabel \  
python-pychart python-pydot python-pyparsing python-pypdf python-reportlab python-requests \  
python-simplejson python-tz python-unicodecsv python-unittest2 python-vatnumber python-vobject \  
python-werkzeug python-xlwt python-yaml wkhtmltopdf  
##### Telecharger odoo sur le lien : https://github.com/odoo/odoo en cliquant sur download zip  
    
apres extraction faites copier le contenu du dossier sur le chemin de votre utilisateur deja cree dans notre cas c’est /opt/odoo  
### Configuer openERP  
    Copier le fichier openerp-server.conf dans /etc  
sudo cp /opt/odoo/debian/openerp-server.conf  /etc/odoo-server.conf  
sudo chown odoo: /etc/odoo-server.conf  
sudo chmod 640 /etc/odoo-server.conf  
#### Editer le fichier copié  
sudo gedit /etc/odoo-server.conf  
ajouter addons_path = /opt/odoo/addons et changer db_password = False par remplacer false par le mot de passe deja creer pour postgresql et aussi ajouter cette ligne logfile = /var/log/odoo/odoo-server.log  On obtient un fichier qui contient :  
[options]  
; This is the password that allows database operations:  
; admin_passwd = admin  
db_host = False  
db_port = False  
db_user = odoo  
db_password = passwordChoisi    
addons_path = /opt/odoo/root/addons  
logfile = /var/log/odoo/odoo-server.log  

#### Pour lancer le serveur on utilise :  
sudo su - odoo -s /bin/bash  
/opt/odoo/openerp-server  
#### Installing the boot script  
sudo gedit /etc/init.d/odoo-server  

#### copier dedans le contenu de lien suivant :  
http://www.theopensourcerer.com/wp-content/uploads/2014/09/odoo-server

apres, donnez lui les drois necessaires  
sudo chmod 755 /etc/init.d/odoo-server  
sudo chown root: /etc/init.d/odoo-server  

Creer fichier pour journalisation  
sudo mkdir /var/log/odoo  
sudo chown odoo:root /var/log/odoo  

##### Tester le serveur  
sudo /etc/init.d/odoo-server start  

pour consulter le ficher log  
less /var/log/odoo/odoo-server.log  

pour entrer sur l’application tapper l’adresse suivante dans un navigateur  
http://IP_or_domain.com:8069  
