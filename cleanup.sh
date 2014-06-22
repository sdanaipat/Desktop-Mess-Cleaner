#!/bin/zsh

echo "Cleaning up your Desktop mess!"

DATE=`date +%B-%d-%Y`
DEST=~/Desktop\ mess/${DATE}/

if [ ! -d "$DEST" ]; then
  mkdir "$DEST"
fi
mv -f ~/Desktop/* $DEST
echo "All your mess have been moved to" ${DEST}.