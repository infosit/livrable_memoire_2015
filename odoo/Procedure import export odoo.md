### Migration des données d’une base a une autre avec ODOO    

#### Cas n°1 : BD1 -> BD2 les deux bases sont identiques  
### 1/ Exporter  
a partir du diagramme de diagramme de classe  
Classer les classes du parent au fils  
Exporter les classes dans l’ordre ( parents puis fils)  
Ouvrir la 1ere classe parent  
Choisir la vue liste (haut et a droite de l'écran)  
Sélectionner les enregistrements à importer  
Choisir  Exporter dans menu Autres options  
choisir Exporter compatible avec l’import dans le menu Type d’export  
Choisir Format d’export (CSV ou Excel)  
Choisir les attributs dans les Champs disponibles en clinquant deux fois au-dessus  
Enregistrer la liste des attributs choisis en appuyant sur Enregistrer la liste des champs et lui donner un nom et appuyer sur ok  
Enfin appuyer sur le bouton Exporter  
Un fichier CSV est enregistré sur le répertoire de telechargement de votre navigateur  
Des donnees seront generees automatiquements dans le model  

### 2/ Importer
Ouvrir la classe a importer  
Choisir la vue liste (haut et a droite de l'écran)  
Choisir Importer    
Choisir le fichier CSV enregistré en appuyant sur Choisissez un fichier  
Un tableau contient les données s’affiche, il est composé de trois parties  
1ere partie (Header) : les noms techniques des attributs  
2eme partie : les noms affectés aux noms techniques  
3eme partie : les donnees  
Vous pouvez éliminer les attributs a ne pas être importés, en cliquant sur X dans la 2eme partie  
    
    

