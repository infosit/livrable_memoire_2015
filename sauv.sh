!/bin/bash
# un fichier dois d'abort exister sinon le creer avec:
# nano /var/lib/poqtgresql/sauv.dump
rm /var/lib/postgresql/sauv.dump
su postgres
cd /var/lib/postgresql
pg_dump -Fc demo > sauv.dump

exit 0
