# This script will make backups of a file. It will copy the file to a backup location.
#!/bin/bash
source_file="/path/to/source/file"
backup_location="/path/to/backup/location"

cp $source_file $backup_location
echo "Backup of $source_file created in $backup_location."
