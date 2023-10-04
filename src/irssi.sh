_patch_table() {
    _patch_table_edit_options \
        '--connect;[`_choice_server`]' \
        '--nick;[`_choice_nick`]' \
        '--port;[`_choice_port`]' \

}

_choice_server() {
    grep "\(^[{ 	]*address\)\|\([{ 	]address\)[ 	]*=" ~/.irssi/config | \
    sed -e "s,^.*address *= *\"\([^\"]\+\).*,\1 ,g"   
}

_choice_port() {
    grep "\(^[{ 	]*port\)\|\([{ 	]port\)[ 	]*=" ~/.irssi/config | \
    sed -e "s,^.*port *= *\"\([^\"]\+\).*,\1,g"
}

_choice_nick() {
    grep "\(^[{ 	]*nick\)\|\([{ 	]nick\)\|\([{ 	]alternate_nick\)\|\(^[{ 	]*alternate_nick\)[ 	]*=" ~/.irssi/config | \
    sed -e "s,^.*nick *= *\"\([^\"]\+\).*,\1,g"
}
