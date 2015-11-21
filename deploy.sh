#! /bin/sh
echo "**********DEPLOYING CSS**********"
ftp -v << DEBUG
open siddharth.info
binary
prompt
cd public_html/css
lcd css
msend *.* 
ls -al
lcd ../js
cd ../js
msend *.*
ls -al
lcd ../img
cd ../img
msend *.*
ls -al
lcd ../font
cd ../font
msend *.*
ls -al
lcd ..
cd ..
msend index.html
ls -al
bye

