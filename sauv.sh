!/bin/bash
# un fichier dois d'abort exister sinon le creer avec:
# nano /var/lib/poqtgresql/sauv.dump
rm /var/lib/postgresql/sauv.dump
su postgres
cd
pg_dump -Fc demo > sauv.dump
eixt
exit 0
