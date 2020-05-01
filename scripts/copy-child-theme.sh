#!/bin/bash

ncftpput  -R -v -u $WPUSER -p $WPPASSWORD $WPHOST \
'/alexmedia.co.il/public_html/wp-content/themes/' \
'/Users/lirancohen/Projects/personal/alexmedia-wordpress/alexmedia-selfer'

