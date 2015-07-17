mkdir -p backups mount

# TODO Handle serial backups
BACKUP_FILE=backups/$1.zip

ifuse mount --container $1
cd mount
  echo zip -vr ../$BACKUP_FILE Documents Library
  zip -vr ../$BACKUP_FILE Documents Library
cd -
umount mount

echo Wrote $BACKUP_FILE
