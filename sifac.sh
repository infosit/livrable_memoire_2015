#!/bin/bash
cd /opt/odoo/addons
rm -R sifa_compta
mkdir sifa_compta
cd sifa_compta
git clone https://github.com/abbenbouchta/sifa_compta.git --depth 1 --branch develop --single-branch .
cd ..
chmod -R 775 sifa_compta
chown -R odoo:odoo sifa_compta
service odoo-server restart
exit 0
