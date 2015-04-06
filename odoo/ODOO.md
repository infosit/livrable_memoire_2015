# Odoo
server/web/database/manager      
server/web/database/selector
   
SIFA: Droit d'acces?:  

Module odoo backup auto:  
http://www.odoo.yenthevg.com/automated-backups-in-odoo/ 

vue html d'un report:  
http://localhost:8089/report/html/sifa.report_declaration1/70 


#Enlever la barre  "your Odoo is not supported ..."
- Récupérer le module oerp_no_phoning_home 
git clone https://bitbucket.org/BizzAppDev/oerp_no_phoning_home.git

- copier le répertoire /oerp_no_phoning_home dans le répertoire /addons du serveur Odoo   (ou répertoire dédié aux addons non officiels).

- Faire une mise à jour des modules
- Installer le module
source : http://lolierp.blogspot.fr/2015/01/odoo-8-bloquer-le-message-your-odoo-is.html


La sollution de  “ field larger than field limit (131072). “
Editer le medel /opt/odoo/odoo-server/addons/base_import/models.py et ajouter les lignes suivantes au debut du fichier ;

import sys
maxInt = sys.maxsize
decrement = True
while decrement:
    # decrease the maxInt value by factor 10 
    # as long as the OverflowError occurs.
    decrement = False
    try:
        csv.field_size_limit(maxInt)
    except OverflowError:
        maxInt = int(maxInt/10)
        decrement = True
Installer DIA sur ubuntu

Dans logitheque chercher DIA et installer
ajouter codegen_openerp.py dans DIA qui nous permet de exporter les projets openerp

telecherger codegen_openerp.py dans le lien suivant : 
http://nullege.com/codes/show/src%40o%40p%40openerp-extra-6.1-HEAD%40openerp_dia%40codegen_openerp.py/21/dia/python

copier le fichier dans le lien /usr/share/dia/python
dans dia 
boite de dialogue -> python console
tappez    import codegen_openerp.py

# Vue html rapport 
http://localhost:8089/report/html/sifa.report_declaration1/70
