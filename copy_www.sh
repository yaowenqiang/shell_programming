#!/bin/bash
#cd /var/www
#for FILE in *.html
for FILE in /var/www/*.html
do
    echo "Copying $FILE"
    cp $FILE /var/www/www-just-html
done

