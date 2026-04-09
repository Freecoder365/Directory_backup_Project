#!/bin/bash

#inputs
source_dir=$1
backup_dir=$2
log_file="/home/sai/shell_scripting/Directory_backup_project/backup.log"

#validate input
if [[ $# -lt 2 ]]
then
     echo "Usage: $0 <source_directory> <backup_directory>"
     exit 1
fi

#check if source directory exists
if [[ ! -d $source_dir ]]
then
     echo "Source directory ${source_dir} does not exist."
        exit 1
fi

#check if backup directory exists, if not create it
if [[ ! -d $backup_dir ]]
then
       mkdir -p $backup_dir
fi

#create timestamp
timestamp=$(date  +%y%m%d_%H%M%S)

#create backup
backup_name="backup_${timestamp}"
cp -r "$source_dir" "$backup_dir/$backup_name"

#logging
echo "$(date): Backup of ${source_dir} created at ${backup_dir}/${backup_name}" >> $log_file
echo "Backup completed successfully."

#removing old backups 
cd "$backup_dir"
old_backup= $(ls -t | tail -n+4 ) 
for backup in old_backup
do
      rm -rf "$backup"
     echo "$(date): Old backup ${backup} removed." >> $log_file
done
