#!/bin/bash

ncftpput  -R -v $WPUSER -p $WPPASSWORD $WPHOST \
'/alexmedia.co.il/public_html/wp-content/plugins/' \
'/Users/lirancohen/Projects/personal/alexmedia-wordpress/menu-item-with-icon'

