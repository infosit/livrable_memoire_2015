Configuration localisation ubuntu   
1ere solution:    
Ce est un problème commun si vous vous connectez à distance, la solution est de ne pas transmettre vos paramètres régionaux.   
Editer le fichier /etc/ssh/ssh_config :   
nano /etc/ssh/ssh_config    
et commenter la ligne: SendEnv LANG LC_*.   
pg_createcluster 9.3 main --start    
/etc/init.d/postgres restart    
