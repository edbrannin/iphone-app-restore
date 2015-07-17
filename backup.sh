mkdir -p backups
# TODO Handle serial backups
BACKUP_FILE=backups/$1.zip
echo ifuse mount --container $1
ifuse mount --container $1
ls -l mount
ls -l mount/Library/Preferences
cd mount
  echo zip -vr ../$BACKUP_FILE Documents Library
  zip -vr ../$BACKUP_FILE Documents Library
cd -

umount mount
