Il suffit de mettre le script sur votre serveur pour effacer vos sauvegardes après les avoir envoyés sur un autre serveur via FTP !
Pour cela :

# dossier à sauvegarder 
SPASIFOLDER="***"
# Serveur ftp 
FTPHOST="***"
# Nom d’utilisateur ftp
FTPUSER="***"
# Mot de passe ftp
FTPPASS="***"
#Dossieur ou sauvegarder
FTPDIR="***"

# Si vous ne voulez pas effacer vos sauvegardes après envoie il faut change Y par N 
DELETE=Y
# Nombre de jours à garder les sauvegardes, dans ce cas-là, effacer après 2 jours
JOURS=2
