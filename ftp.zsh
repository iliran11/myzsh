LOCAL_ALEX='~/Projects/liran/personal/alexmedia-wordpress'
REMOTE_ALEX_PLUGIN='/alexmedia.co.il/public_html/wp-content/plugins'
REMOTE_CONTACT_FORM="$REMOTE_ALEX_PLUGIN/alexmedia-contact-form"
REMOTE_THEMES="/alexmedia.co.il/public_html/wp-content/themes"
LOCAL_CONTACT_FORM="$LOCAL_ALEX/alexmedia-contact-form"
LOCAL_CHILD_THEME="$LOCAL_ALEX/alexmedia-selfer/"
LOCAL_CLIENT_SCRIPTS="$LOCAL_ALEX/alex-media-client-scripts"

function copyfiles() {
  ncftpput -u $WPUSER -p $WPPASSWORD $WPHOST $1 $2

}
function ftpcopydir() {
  ncftpput -R -u $WPUSER -p $WPPASSWORD $WPHOST $1 $2
}

alias ftpcontactform="ftpcopydir $REMOTE_CONTACT_FORM/widget $LOCAL_CONTACT_FORM/widget/build &&
ftpcopydir $REMOTE_CONTACT_FORM $LOCAL_CONTACT_FORM/includes &&
copyfiles $REMOTE_CONTACT_FORM "$LOCAL_CONTACT_FORM/alexmedia-contact-form.php"
"

alias ftpchildtheme="ftpcopydir $REMOTE_THEMES $LOCAL_CHILD_THEME"
alias ftpclientscripts="ftpcopydir $REMOTE_ALEX_PLUGIN $LOCAL_CLIENT_SCRIPTS"
