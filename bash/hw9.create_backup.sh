#!/bin/bash

TO_BACKUP="$HOME/.config"
BACKUP_DIR="$HOME/backup"
MAX_BACKUPS=5

cd ~ 
tar czf backup_`date '+%H-%M--%d%m%Y'`.tar.gz $TO_BACKUP
mv *.tar.gz $BACKUP_DIR

CURRENT_BACKUPS=`ls $BACKUP_DIR | wc -l`

if [[ $CURRENT_BACKUPS -gt $MAX_BACKUPS ]]; then
    rm $BACKUP_DIR/`ls -t backup | awk 'NR>5'`
fi;