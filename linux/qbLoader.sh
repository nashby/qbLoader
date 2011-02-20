#!/bin/bash

curl -F "password=qbLoader" -F "username=qbLoader" http://qb.by/login/ -c /tmp/qb_cookie.txt
curl -b tmp/qb_cookie.txt -# -F "qbfile=@$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" -F "valid=1" -F "form_submit=yes" http://file.qb.by/upload | grep -E -o "http://file.qb.by/[a-z0-9]+" | xclip -selection clipboard

echo "Done! Press Ctrl+V and get your link"
read

