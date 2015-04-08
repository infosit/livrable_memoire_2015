# Procedure de mise à jour sifa et sifa_repports:
ssh root@ip  
cd /opt/odoo/addons  
rm -R sifa  
mkdir sifa  
cd sifa  
(s'assurer que master est à jour)  
git clone https://github.com/abbenbouchta/sifa.git --depth 1 --branch master --single-branch .   
cd ..  
chmod -R 775 sifa  
chown -R odoo:odoo sifa  
ls -l  
- service odoo-server restart  

- meme chose pour sifa_reports:  

rm -R sifa_reports  
mkdir sifa_reports  
cd sifa_reports  
(s'assurer que master est à jour)  
git clone https://github.com/abbenbouchta/sifa_reports --depth 1 --branch master --single-branch .   
cd ..  
chmod -R 775 sifa_reports  
chown -R odoo:odoo sifa_reports  
ls -l  
service odoo-server restart  
