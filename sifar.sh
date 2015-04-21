#!/bin/bash
cd /opt/odoo/addons
rm -R sifa_reports
mkdir sifa_reports
cd sifa_reports
git clone https://github.com/abdellatifkarroum/sifa_reports.git --depth 1 --branch develop --single-branch .
cd ..
chmod -R 775 sifa_reports
chown -R odoo:odoo sifa_reports
service odoo-server restart
exit 0
