#!/bin/bash

file="`echo $NAUTILUS_SCRIPT_SELECTED_FILE_PATHS|tr -d "\n"`"

touch ~/qb_cookie.txt
curl -F "password=qbLoader" -F "username=qbLoader" http://qb.by/login/ -c ~/qb_cookie.txt
link=`curl -b ~/qb_cookie.txt -# -F "qbfile=@$file" -F "valid=1" -F "form_submit=yes" http://file.qb.by/upload | grep -E -o "http://file.qb.by/[a-z0-9]+"` 
echo $link | xsel --clipboard
rm ~/qb_cookie.txt
echo "Done! Press Ctrl+V and get your link"
read
