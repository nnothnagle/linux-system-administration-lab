#!/bin/bash

SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"

echo "Welcome to YGGGRASIL Backup Utility!"
date

TIMESTAMP=$(date +%Y%m%d-%H%M%S)

if [ -f "$SCRIPT_DIR/notes.txt" ]; then
	echo "Source file found."
else
	echo "ERROR: Source file is missing."
	exit 1
fi

BACKUP_STATUS=1

TEMP_FILE=$(mktemp "$SCRIPT_DIR/backup-temp.XXXXXX") || {
	echo "ERROR: Could not create temporary file."
	exit 1
}

if  cp "$SCRIPT_DIR/notes.txt" "$TEMP_FILE"; then
	if ln "$TEMP_FILE" "$SCRIPT_DIR/notes-$TIMESTAMP.txt"; then
		if echo "$TIMESTAMP - SUCCESS" >> "$SCRIPT_DIR/backup.log"; then
			echo "Backup successful"
			BACKUP_STATUS=0
		else
			echo "Warning: Backup created, but logging failed."
			BACKUP_STATUS=1
		fi
	else
		echo "ERROR: Backup destination already exists or linking failed."
		echo "$TIMESTAMP - FAILED" >> "$SCRIPT_DIR/backup.log"
	fi

else
	echo "Backup failed"
	echo "$TIMESTAMP - FAILED" >> "$SCRIPT_DIR/backup.log"
fi

rm -f -- "$TEMP_FILE"

exit "$BACKUP_STATUS"

