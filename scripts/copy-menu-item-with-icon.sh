#!/bin/bash

ncftpput  -R -v -u $USER -p $PASSWORD $HOST \
'/alexmedia.co.il/public_html/wp-content/plugins/' \
'/Users/lirancohen/Projects/personal/alexmedia-wordpress/menu-item-with-icon'

