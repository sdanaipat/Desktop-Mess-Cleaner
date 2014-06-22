#!/bin/zsh

MESS_PILE=~/Desktop\ mess/  # put your desired directory here

if [ "$(ls ~/Desktop/)" ]; then
    DATE=`date +%B-%d-%Y`
    DEST=${MESS_PILE}${DATE}/

    if [ ! -d "$DEST" ]; then
      mkdir "$DEST"
    fi
    mv -v -i  ~/Desktop/* $DEST
    echo "All your mess has been moved to" ${DEST}.
else
    echo "Your desktop was already empty."
fi