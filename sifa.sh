#!/bin/bash
cd /opt/odoo/addons
rm -R sifa
mkdir sifa
cd sifa
git clone https://github.com/abbenbouchta/sifa.git --depth 1 --branch develop --single-branch .
cd ..
chmod -R 775 sifa
chown -R odoo:odoo sifa
service odoo-server restart
exit 0
