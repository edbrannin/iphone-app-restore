mkdir -p backups mount

# TODO Handle serial backups
BACKUP_FILE=backups/$1.zip

ifuse mount --container $1
cd mount
  unzip ../$BACKUP_FILE
cd -
umount mount

echo Restored from $BACKUP_FILE
