_patch_table() {
    _patch_table_edit_options \
        '-editor;[`_module_os_command`]' \
        '-hiddenlinks;[merge|listonly|ignore]' \
        '-nozap(<value>);[all|initially|full]' \
        '-restrictions;*,[`_choice_restriction`]' \
        '-trace_mask;[`_choice_trace_mask`]' \

}

_choice_restriction() {
    cat <<-'EOF'
all	restricts all options listed below.
bookmark	disallow changing the location of the bookmark file.
bookmark_exec	disallow execution links via the bookmark file.
change_exec_perms	disallow changing the eXecute permission on files (but still allow it for directories) when local file management is enabled.
default	same as command line option -anonymous.
dired_support	disallow local file management.
disk_save	disallow saving to disk in the download and print menus.
dotfiles	disallow access to, or creation of, hidden (dot) files.
download	disallow some downloaders in the download menu (does not imply disk_save restriction).
editor	disallow external editing.
exec	disable execution scripts.
exec_frozen	disallow the user from changing the local execution option.
externals	disallow some “EXTERNAL” configuration lines if support for passing URLs to external applications (with the EXTERN command) is compiled in.
file_url	disallow using G)oto, served links or bookmarks for file: URLs.
goto	disable the “g” (goto) command.
inside_ftp	disallow ftps for people coming from inside your domain (utmp required for selectivity).
inside_news	disallow USENET news posting for people coming from inside your domain (utmp required for selectivity).
inside_rlogin	disallow rlogins for people coming from inside your domain (utmp required for selectivity).
inside_telnet	disallow telnets for people coming from inside your domain (utmp required for selectivity).
jump	disable the “j” (jump) command.
multibook	disallow multiple bookmarks.
mail	disallow mail.
news_post	disallow USENET News posting.
options_save	disallow saving options in .
outside_ftp	disallow ftps for people coming from outside your domain (utmp required for selectivity).
outside_news	disallow USENET news reading and posting for people coming from outside your domain (utmp required for selectivity).
outside_rlogin	disallow rlogins for people coming from outside your domain (utmp required for selectivity).
outside_telnet	disallow telnets for people coming from outside your domain (utmp required for selectivity).
print	disallow most print options.
shell	disallow shell escapes and lynxexec or lynxprog G)oto's.
suspend	disallow Unix Control-Z suspends with escape to shell.
telnet_port	disallow specifying a port in telnet G)oto's.
useragent	disallow modifications of the User-Agent header.
EOF
}

_choice_trace_mask() {
    cat <<-'EOF'
1	SGML character parsing states
2	color-style
4	TRST (table layout)
8	configuration (lynx.
16	binary string copy/append, used in form data construction.
32	cookies
64	character sets
128	GridText parsing
256	timing
512	detailed URL parsing
EOF
}
