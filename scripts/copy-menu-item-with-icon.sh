#!/bin/bash

ncftpput  -R -v -u $USER -p $PASSWORD $HOST \
'/alexmedia.co.il/public_html/wp-content/plugins/menu-item-with-icon/' \
'/Users/lirancohen/Projects/personal/alexmedia-wordpress/child-theme'

