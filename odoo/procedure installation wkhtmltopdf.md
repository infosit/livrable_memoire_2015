- Apres pls recherches on a constaté qu'il faut Installer la derniere version de wkhtmltopdf.		 
- attention :	
	- Il faut choisir la version adequate de votre distribution linux (ubuntu ou debian...)	  
	## I- installation Wkhtmltopdf sous debian:   
	 ### - 1/ sous debian 64 bits:    
	#### Tapez les commandes suivantes:  
0)  cd /opt	
1)	Wget http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.2.1/wkhtmltox-0.12.2.1_linux-wheezy-amd64.deb  
2)  dpkg -i wkhtmltox-0.12.2.1_linux-wheezy-amd64.deb 
3) 	cp /usr/local/bin/wkhtmltopdf /usr/bin  
4)	cp /usr/local/bin/wkhtmltoimage /usr/bin   
 pour tester le fonctionnement de wkhtmltopdf utiliser la commande suivante:     
5) wkhtmltopdf www.google.com test.pdf  
	 - 2/ sous debian 32 bits:    
	 ####	Tapez les commandes suivantes:  
0)  cd /opt	 
1) Wget http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.2.1/wkhtmltox-0.12.2.1_linux-wheezy-i386.deb    
2)  dpkg -i wkhtmltox-0.12.2.1_linux-wheezy-i386.deb    
3) 	cp /usr/local/bin/wkhtmltopdf /usr/bin    
4)	cp /usr/local/bin/wkhtmltoimage /usr/bin     
 pour tester le fonctionnement de wkhtmltopdf utiliser la commande suivante:       
5) wkhtmltopdf www.google.com test.pdf     
	
	## II- installation Wkhtmltopdf sous ubuntu :     
	### - 1/ sous ubuntu 64 bits:    
	 ####	Tapez les commandes suivantes:   
0)  cd /opt	 
1)  Wget http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.2.1/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb  
2)  dpkg -i wkhtmltox-0.12.2.1_linux-trusty-amd64.deb    
3) 	cp /usr/local/bin/wkhtmltopdf /usr/bin    
4)	cp /usr/local/bin/wkhtmltoimage /usr/bin     
 pour tester le fonctionnement de wkhtmltopdf utiliser la commande suivante:       
5) wkhtmltopdf www.google.com test.pdf     
		### - 2/ sous ubuntu 32bits:     
		 ####	Tapez les commandes suivantes:  
0)  cd /opt		 
1) Wget http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.2.1/wkhtmltox-0.12.2.1_linux-trusty-i386.deb     
2) dpkg -i wkhtmltox-0.12.2.1_linux-trusty-i386.deb  
3) cp /usr/local/bin/wkhtmltopdf /usr/bin  
4) cp /usr/local/bin/wkhtmltoimage /usr/bin   
 pour tester le fonctionnement de wkhtmltopdf utiliser la commande suivante:       
5) wkhtmltopdf www.google.com test.pdf     