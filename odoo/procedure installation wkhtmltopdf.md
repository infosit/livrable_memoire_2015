- attention :		
probleme de mise en page infosit.ma et 2b-groupe :

allez sur configuration/technical/parametre/parametre systeme
modifer la cle : web.base.url et ajouter comme valeur http://127.0.0.1:8069
REF : https://github.com/odoo/odoo/issues/1105 

- Apres pls recherches on a constaté qu'il faut Installer la derniere version de wkhtmltopdf.		 
- attention :	
	- Il faut choisir la version adequate de votre distribution linux (ubuntu ou debian...)	  
	## I- installation Wkhtmltopdf sous debian:   
	 ### - 1/ sous debian 64 bits:    
	#### Tapez les commandes suivantes:  
0)  cd /opt  	
1)	wget http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.2.1/wkhtmltox-0.12.2.1_linux-wheezy-amd64.deb  
2)  dpkg -i wkhtmltox-0.12.2.1_linux-wheezy-amd64.deb		
puis installer si ne sont pas installées les dependance suivant:		
apt-get install xfonts-base xfonts-75dpi xfonts-utils libfontenc1 libxfont1 xfonts-encodings		
ou manuelement: https://launchpad.net/ubuntu/trusty/i386/xfonts-75dpi/1:1.0.3	
3) 	cp /usr/local/bin/wkhtmltopdf /usr/bin  
4)	cp /usr/local/bin/wkhtmltoimage /usr/bin   
 pour tester le fonctionnement de wkhtmltopdf utiliser la commande suivante:     
5) wkhtmltopdf www.google.com test.pdf  
	  2/ sous debian 32 bits:    
	 ####	Tapez les commandes suivantes:  
0)  cd /opt  	 
1) wget http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.2.1/wkhtmltox-0.12.2.1_linux-wheezy-i386.deb    
2)  dpkg -i wkhtmltox-0.12.2.1_linux-wheezy-i386.deb  
puis installer si ne sont pas installées les dependance suivant:		
apt-get install xfonts-base xfonts-75dpi xfonts-utils libfontenc1 libxfont1 xfonts-encodings		

3) 	cp /usr/local/bin/wkhtmltopdf /usr/bi		    
4)	cp /usr/local/bin/wkhtmltoimage /usr/bin     
 pour tester le fonctionnement de wkhtmltopdf utiliser la commande suivante:       
5) wkhtmltopdf www.google.com test.pdf     
	
### II- installation Wkhtmltopdf sous ubuntu :     
## - 1/ sous ubuntu 14.04 64 bits:    
	 ####	Tapez les commandes suivantes:   
0)  cd /opt  	 
1)  wget http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.2.1/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb  
2)  dpkg -i wkhtmltox-0.12.2.1_linux-trusty-amd64.deb  
puis installer si ne sont pas installées les dependance suivant:		
3) apt-get install xfonts-base xfonts-75dpi xfonts-utils libfontenc1 libxfont1 xfonts-encodings  
ou manuelement : https://launchpad.net/ubuntu/trusty/i386/xfonts-75dpi/1:1.0.3
4) 	cp /usr/local/bin/wkhtmltopdf /usr/bin    
5)	cp /usr/local/bin/wkhtmltoimage /usr/bin     
 pour tester le fonctionnement de wkhtmltopdf utiliser la commande suivante:       
6) wkhtmltopdf www.google.com test.pdf     
###		### - 2/ sous ubuntu 14.04 32bits:     
		 ####	Tapez les commandes suivantes:  
0)  cd /opt  		 
1) wget http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.2.1/wkhtmltox-0.12.2.1_linux-trusty-i386.deb     
2) dpkg -i wkhtmltox-0.12.2.1_linux-trusty-i386.deb  
puis installer si ne sont pas installées les dependance suivant:		
3) apt-get install xfonts-base xfonts-75dpi xfonts-utils libfontenc1 libxfont1 xfonts-encodings    
4) 	cp /usr/local/bin/wkhtmltopdf /usr/bin    
5)	cp /usr/local/bin/wkhtmltoimage /usr/bin     
 pour tester le fonctionnement de wkhtmltopdf utiliser la commande suivante:       
6) wkhtmltopdf www.google.com test.pdf    


NB:
edemarrez le service Odoo puis, connectez vous en tant qu’admin et aller à :		

Configuration -> Paramètres -> Paramètres Systèmes		
Créez un nouvel enregistrement avec les valeurs suivantes :		

    Clé : webkit_path		
    Valeur : /usr/bin/wkhtmltopdf		
