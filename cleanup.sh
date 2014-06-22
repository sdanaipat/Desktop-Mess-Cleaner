#!/bin/zsh

if [ "$(ls ~/Desktop/)" ]; then
    DATE=`date +%B-%d-%Y`
    DEST=~/Desktop\ mess/${DATE}/

    if [ ! -d "$DEST" ]; then
      mkdir "$DEST"
    fi
    mv -f ~/Desktop/* $DEST
    echo "All your mess has been moved to" ${DEST}.
else
    echo "Your desktop was already empty."
fi