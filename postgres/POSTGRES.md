# Postgres    

### Remarque: 


- /etc/postgressql/9.1/main   postgresql.conf         : fichier de configuration 

### les bases de données sont situées sur:
/var/lib/postgresql/9.1/main…  (plusieurs répéroitre chaque répertoirn contier plusieurs base
exemple fcel avec OID 58589 se trouve sur le reperoire nomé; /var/lib/postgresql/9.1/main/base/58589

========
### Repertoir d’installation serveur 192.168.2.100 et seveur ovh;   
/usr/share/postgresql/9.1
===========
### se logi sur postgres
root@serveur:~$ su postgres
===========
### Creer une base de donné:
root@serveur:~$ su - postgres
postgres#@serveur:~$ createdb exemple
=============
### supprimer une base de donné:
postgres#@serveur:~$ dropdb exemple
======
### se connecter à une base de donné:
postgres#@serveur:~$ psql exempl
exemple=#
==========
exemple=# \h          help
exemple=# \ h CREATEUSER    help sur cette commande
========
### creer une table:
exemple=# CREATE TABLE villes (
exemple=#  nom            varchar(80),
exemple=#  emplacement    point   (sans ,)
exemple=#);
===============
### supprimer une table:
exemple=#DROP TABLE ville;
==========


### Héritage:
exemple=# CREATE TABLE villes (
exemple=# nom        text,
exemple=#  population real
);

exemple=# CREATE TABLE capitales (
exemple=#  etat      char(2)
exemple=# ) INHERITS (villes);
==========
### creer un groupe de base de données:
postgres#@serveur:~$ initdb -D /var/lib/postgresql/9.1/mai,/base2/
============

### configuration du serveur:
les fonctions et les parametre utiliser dans le fichier posgresql.conf
vour lien: http://docs.postgresql.fr/9.3/runtime-config.html



===========
exemple=# \h          help
exemple=# \h  CREATE ROLE     help
les roles:

postgres#@serveur:~$\du         liste des base de donnée
postgres#@serveur:~$psql
posgres=#\du                 liste des roles
posgres=#\l    (L)     liste des base de donnée

### pour creer un role:
postgres#@serveur:~$psql
posgres=# CREATE ROLE teste;
posgres=# CREATE ROLE teste WITH LOGIN CREATEDB;

### supprimer role;
posgres=# DROP ROLE teste;
modifier un role
posgres=# ALTER ROLE teste LOGIN;
posgres=# CREATE ROLE teste PASSWORD ‘*******;


      \h pour l'aide-mémoire des commandes SQL
        \? pour l'aide-mémoire des commandes psql
        \g ou point-virgule en fin d'instruction pour exécuter la requête
        \q pour quitter
============================

essayer:
root@serveur:~$creatuser teste
==============
### creer une base pour le propriètaire nom-role
posgres=# CREATE DATABASE base_exemple OWNER nom-role;

### changer le proprètare de la base:
posgres=# ALTER DATABASE base_exemple OWNER TO no autre_nom-role;
renommer la base
posgres=# ALTER DATABASE base_exemple RENAME R TO no autre_nom_base;
==================
### se connecter à la base:
postgres#@serveur:$ psql base_exemple
base_exemple=#

liste des objets( table sequence….)
base_exemple=#\d
===============
### sauvegarde base de donné:
postgres#@serveur:$ pg_dump  -Fc base_exemple > base_exemple.dump
Restaurer la base:
postgres#@serveur:$pg_restore -C -d postgres base_exemple.dump

il va le sauvegarder dans le dossier /var/lib/postgresql

==================
### remarque importante:
pgadmin3 fait la maintenance du base:

avec un clic droite sur une base selectioné
un menu contextuel avec : opération de mai,tenance: VACUUM - ANALYZE - REINDEX - CLUSTRE
option de VACCUUM: FULL - FREEZE - ANALYZE
==================



### Procedure du sauvegarde et restauration pour openerp:

root@serveur:~$ su postgres
postgres#@serveur:$pg_dump -Fc nom_base > nom_sauvegarde_base.dump    
(postgres sauvegarde la base dans le répertoire /var/lib/postgressql  avec le propriétaire postgres laisser la tel qu’elle)
postgres#@serveur:$  createdb -O openerp  nouvelle_base
postgres#@serveur:$pg_restore -d nouvelle_base nom_sauvegarde_base.dump

FIN.
### PGadmin3   
PGadmin3 est un Outil équivalent de SQLdevelopper pour postgresql   
On l’installe en tapant la commade : sudo apt-get install pgadmin3  
###  créer un fichier CSV  
Pour créer un fichier CSV des personnes, liées aux sociétés, nous utiliserons la commande SQL suivante dans PSQL:  
  copy (select 'person_'||id as "External ID",person_name as "Name",'False' as "Is a Company",'company_'||company_id as "Related Company/External ID" from persons) TO '/tmp/person.csv' with CSV  


### To set the default password:
Run the psql command from the postgres user account:
sudo -u postgres psql postgres

Set the password:
\password postgres

Enter a password.
Close psql.
\q
### Requête pour exporter les données:
copy (select * from commerial_system) TO '/home/abenbouchta/filecsv/tabi3amo9awal.csv' with CSV

### Requête pour récupérer les entêtes d’une table
select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'birth_place'


### Requête pour importer les données:
COPY commerial_system (id,create_uid,code,create_date,name,write_uid,write_date,description) FROM '/home/abenbouchta/filecsv/tabi3amo9awal.csv' WITH csv




