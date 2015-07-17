mkdir -p backups mount

# TODO Handle serial backups
BACKUP_FILE=backups/$1.zip

ifuse mount --container $1
sleep 1
cd mount
  unzip -o ../$BACKUP_FILE
  ls -l Library/Preferences
cd -
umount mount

echo Restored from $BACKUP_FILE
