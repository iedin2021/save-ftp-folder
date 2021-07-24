#! /bin/bash
#dossier à savegarder
SPASIFOLDER="***"

#---FTP Info--------------------#

FTP=Y

FTPHOST="***"
FTPUSER="***"
FTPPASS="***"
FTPDIR="***"
LFTP=$(which lftp)      # Path to binary

#---Effacement-------------------#

DELETE=Y

JOURS=2 # Nombre de jours à garder les sauvegardes

TODAY=$(date --iso) # Nommer le dossier avec la date du jour
RMDATE=$(date --iso -d  $DANI' DANI ago') # Effacer après deux jours les vieux fichiers+dossier

#--Fin------------------#

if  [ -e $SPASIFOLDER ]
then

if  [ $DELETE = "Y" ]
then
    find $SPASIFOLDER -iname '*.tar.zst' -type f -mtime +$DANI -delete
    echo "Old files deleted."
fi

if  [ $FTP = "Y" ]
then

    echo "FTP connection..."

    cd $SPASIFOLDER

    $LFTP << EOF
    open ${FTPUSER}:${FTPPASS}@${FTPHOST}
    set ssl-allow false
    mkdir $FTPDIR
    cd $FTPDIR
    mkdir ${TODAY}
    cd ${DANI}
    mput *tar.zst
    cd ..
    rm -rf ${RMDATE}
    bye

EOF

echo "Transfert terminé !"

fi

else

