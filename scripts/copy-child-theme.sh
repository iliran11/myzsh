#!/bin/bash

ncftpput  -R -v -u $USER -p $PASSWORD $HOST \
'/alexmedia.co.il/public_html/wp-content/themes/alexmedia-selfer/' \
'/Users/lirancohen/Projects/personal/alexmedia-wordpress/child-theme'

