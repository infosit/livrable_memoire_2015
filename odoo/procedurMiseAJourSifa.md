# Procedure de mise à jour sifa et sifa_repports:
- ssh root@ip
- cd /opt/odoo/addons
- rm -R sifa
- rm -R sifa_reports
- mkdir sifa
- cd sifa
- git clone https://github.com/abbenbouchta/sifa.git --depth 1 --branch master --single-branch . 
