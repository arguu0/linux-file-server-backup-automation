#!/bin/bash

SOURCE_PATH="/srv/company"     # Change to the path that you are gonna back up
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
BACKUP_FILE_NAME="/srv/company/backups/backup-$TIMESTAMP.tar.gz"    # can replace "/srv/company/backups/backup-" with your prefered saving path

# Create compressed archive
if tar -czf "$BACKUP_FILE_NAME" \
    -C "$SOURCE_PATH" \
    shared finance IT development; then

    echo "Backup completed: $BACKUP_FILE_NAME"
else
    echo "Backup failed!"
    exit 1
fi
