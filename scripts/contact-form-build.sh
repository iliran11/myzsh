#!/bin/bash
HOST='alexmedia.co.il'
USER='liran@alexmedia.co.il'
PASSWORD='pg*NS*&ZOg3%0#a'

ftp -inv $HOST <<EOF
user $USER $PASSWORD
cd alexmedia.co.il/public_html/wp-content/plugins/alexmedia-contact-form/widget
lcd /Users/lirancohen/Projects/personal/alexmedia-wordpress/alexmedia-contact-form/widget/build
binary
mput *
bye
EOF
