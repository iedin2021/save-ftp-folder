N'ayant pas trouvé de script qui peut faire des sauvegardes des image proxmox, j'ai décidé de fouiller un peu sur le web et de faire un petit script qui s’exécute via CronTab et qui pourra m'aider à faire des sauvegardes et effacer après l’envoie sur un autre serveur !



[INSTALLATION]
Il suffit de mettre le script sur votre serveur pour effacer vos sauvegardes après les avoir envoyés sur un autre serveur via FTP !
Pour cela :

#dossier à sauvegarder 
SPASIFOLDER="***"
#Serveur ftp 
FTPHOST="***"
#Nom d’utilisateur ftp
FTPUSER="***"
#Mot de passe ftp
FTPPASS="***"
#Dossieur ou sauvegarder
FTPDIR="***"

# Si vous ne voulez pas effacer vos sauvegardes après envoie il faut change Y par N 
DELETE=Y
# Nombre de jours à garder les sauvegardes, dans ce cas-là, effacer après 2 jours
JOURS=2
