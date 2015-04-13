### Questions:    
- Comment changer le port defaut 8069 de odoo ?
- Comment configurer le port 8069 to 80 ?   
nano /etc/rc.local    
ajouter cette ligne:    
iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8069    
reboot    

- Comment resoudre le pb wkhtmltopdf?
- Comment autoriser root à se conneter a distant en ssh?
- Configuration localisation ubuntu
- Comment configurer DNS? BIND


