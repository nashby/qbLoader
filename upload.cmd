cls
@echo off

curl -# -F "qbfile=@%1" -F "valid=1" -F "form_submit=yes" http://file.qb.by/upload > %TEMP%\qb.txt"

for /F "delims=" %%a in ('findstr /R "http://file.qb.by/*[a-z0-9]" %TEMP%\qb.txt') do set var="%%a"

echo.%var:~39,50% | clip
echo "Done! Press Ctrl+V and get your link"

PAUSE