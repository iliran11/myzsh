#!/bin/bash

ncftpput  -R -v -u $WPUSER -p $WPPASSWORD $WPHOST \
'/alexmedia.co.il/public_html/wp-content/plugins/alexmedia-contact-form/widget' \
'/Users/lirancohen/Projects/personal/alexmedia-wordpress/alexmedia-contact-form/widget/build'

