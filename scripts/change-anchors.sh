#!/bin/bash

ncftpput  -R -v -u $WPUSER -p $WPPASSWORD $WPHOST \
'/alexmedia.co.il/public_html/wp-content/plugins/' \
'/Users/lirancohen/Projects/personal/alexmedia-wordpress/alex-media-change-nav-anchors/'

