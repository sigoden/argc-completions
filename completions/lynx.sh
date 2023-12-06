#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -accept_all_cookies                     accept cookies without prompting if Set-Cookie handling is on (off)
# @flag -anonymous                              apply restrictions for anonymous account, see also -restrictions
# @option -assume_charset <MIMEname>            charset for documents that don't specify it
# @option -assume_local_charset <MIMEname>      charset assumed for local files
# @option -assume_unrec_charset <MIMEname>      use this instead of unrecognized charsets
# @option -auth <id:pw>                         authentication information for protected documents
# @flag -base                                   prepend a request URL comment and BASE tag to text/html outputs for -source dumps
# @option -bibhost <URL>                        local bibp server (default http://bibhost/)
# @flag -book                                   use the bookmark page as the startfile (off)
# @flag -buried_news                            toggles scanning of news articles for buried references (on)
# @option -cache <NUMBER>                       NUMBER of documents cached in memory
# @flag -case                                   enable case sensitive user searching (off)
# @flag -center                                 toggle center alignment in HTML TABLE (off)
# @option -cfg <FILENAME>                       specifies a lynx.cfg file other than the default
# @flag -child                                  exit on left-arrow in startfile, and disable save to disk
# @flag -child_relaxed                          exit on left-arrow in startfile (allows save to disk)
# @option -cmd_log <FILENAME>                   log keystroke commands to the given file
# @option -cmd_script <FILENAME>                read keystroke commands from the given file (see -cmd_log)
# @flag -collapse_br_tags                       toggles collapsing of BR tags (on)
# @option -connect_timeout <N>                  set the N-second connection timeout (18000)
# @option -convert_to <FORMAT>                  convert input, FORMAT is in MIME type notation (experimental)
# @option -cookie_file <FILENAME>               specifies a file to use to read cookies
# @option -cookie_save_file <FILENAME>          specifies a file to use to store cookies
# @flag -cookies                                toggles handling of Set-Cookie headers (on)
# @flag -core                                   toggles forced core dumps on fatal errors (off)
# @flag -crawl                                  with -traversal, output each page to a file with -dump, format output as with -traversal, but to stdout
# @flag -curses_pads                            uses curses pad feature to support left/right shifting (on)
# @flag -debug_partial                          incremental display stages with MessageSecs delay (off)
# @flag -default_colors                         use terminal default foreground/background colors (on)
# @option -delay <NNN>                          set NNN-second delay at statusline message (0.000)
# @option -display                              set the display variable for X exec'ed programs
# @option -display_charset <MIMEname>           charset for the terminal output
# @flag -dont_wrap_pre                          inhibit wrapping of text in <pre> when -dump'ing and -crawl'ing, mark wrapped lines in interactive session (off)
# @flag -dump                                   dump the first file to stdout and exit
# @option -editor[`_module_os_command`]         enable edit mode with specified editor
# @flag -emacskeys                              enable emacs-like key movement (off)
# @flag -enable_scrollback                      toggles compatibility with comm programs' scrollback keys (may be incompatible with some curses packages) (off)
# @option -error_file <FILE>                    write the HTTP status code here
# @flag -force_empty_hrefless_a                 force HREF-less 'A' elements to be empty (close them as soon as they are seen) (off)
# @flag -force_html                             forces the first document to be interpreted as HTML (off)
# @flag -force_secure                           toggles forcing of the secure flag for SSL cookies (off)
# @flag -forms_options                          toggles forms-based vs old-style options menu (on)
# @flag -from                                   toggle transmission of From headers (on)
# @flag -ftp                                    disable ftp access (off)
# @flag -get_data                               user data for get forms, read from stdin, terminated by '---' on a line
# @flag -head                                   send a HEAD request (off)
# @flag -help                                   print this usage message
# @option -hiddenlinks[merge|listonly|ignore] <option>  hidden links: options are merge, listonly, or ignore
# @flag -historical                             toggles use of '>' or '-->' as terminator for comments (off)
# @option -homepage <URL>                       set homepage separate from start page
# @flag -html5_charsets                         toggles use of HTML5 charset replacements (off)
# @flag -image_links                            toggles inclusion of links for all images (off)
# @option -index <URL>                          set the default index file to URL
# @flag -ismap                                  toggles inclusion of ISMAP links when client-side MAPs are present (off)
# @flag -justify                                do justification of text (off)
# @option -link <NUMBER>                        starting count for lnk#.dat files produced by -crawl (0)
# @flag -list_decoded                           with -dump, forces it to decode URL-encoded links (on)
# @flag -list_inline                            with -dump, forces it to show links inline with text (off)
# @flag -listonly                               with -dump, forces it to show only the list of links (off)
# @flag -localhost                              disable URLs that point to remote hosts (off)
# @option -lss <FILENAME>                       specifies a lynx.lss file other than the default
# @flag -mime_header                            include mime headers and force source dump
# @flag -minimal                                toggles minimal versus valid comment parsing (on)
# @option -newschunksize <NUMBER>               number of articles in chunked news listings
# @option -newsmaxchunk <NUMBER>                maximum news articles in listings before chunking
# @flag -nobold                                 disable bold video-attribute
# @flag -nobrowse                               disable directory browsing
# @flag -nocc                                   disable Cc: prompts for self copies of mailings (off)
# @flag -nocolor                                turn off color support
# @flag -nofilereferer                          disable transmission of Referer headers for file URLs (on)
# @flag -nolist                                 disable the link list feature in dumps (off)
# @flag -nolog                                  disable mailing of error messages to document owners (on)
# @flag -nomargins                              disable the right/left margins in the default style-sheet (off)
# @flag -nomore                                 disable -more- string in statusline messages
# @flag -nonrestarting_sigwinch                 make window size change handler non-restarting (off)
# @flag -nonumbers                              disable the link/form numbering feature in dumps (off)
# @flag -nopause                                disable forced pauses for statusline messages
# @flag -noprint                                disable some print functions, like -restrictions=print (off)
# @flag -noredir                                don't follow Location: redirection (off)
# @flag -noreferer                              disable transmission of Referer headers (off)
# @flag -noreverse                              disable reverse video-attribute
# @flag -nostatus                               disable the miscellaneous information messages (off)
# @flag -notitle                                disable the title at the top of each page (off)
# @flag -nounderline                            disable underline video-attribute
# @option -nozap[all|initially|full] <value>    disable checks for 'z' key
# @flag -number_fields                          force numbering of links as well as form input fields (off)
# @flag -number_links                           force numbering of links (off)
# @flag -partial                                toggles display partial pages while downloading (on)
# @flag -partial_thres                          [=NUMBER] number of lines to render before repainting display with partial-display logic (-1)
# @flag -passive_ftp                            toggles passive ftp connection (on)
# @option -pauth <id:pw>                        authentication information for protected proxy server
# @flag -popup                                  toggles handling of single-choice SELECT options via popup windows or as lists of radio buttons (off)
# @flag -post_data                              user data for post forms, read from stdin, terminated by '---' on a line
# @flag -preparsed                              show parsed text/html with -source and in source view to visualize how lynx behaves with invalid HTML (off)
# @flag -prettysrc                              do syntax highlighting and hyperlink handling in source view (off)
# @flag -print                                  enable print functions (DEFAULT), opposite of -noprint (on)
# @flag -pseudo_inlines                         toggles pseudo-ALTs for inlines with no ALT string (on)
# @flag -raw                                    toggles default setting of 8-bit character translations or CJK mode for the startup character set (off)
# @flag -realm                                  restricts access to URLs in the starting realm (off)
# @option -read_timeout <N>                     set the N-second read-timeout (18000)
# @flag -reload                                 flushes the cache on a proxy server (only the first document affected) (off)
# @option -restrictions*,[`_choice_restriction`] <options>  use -restrictions to see list
# @flag -resubmit_posts                         toggles forced resubmissions (no-cache) of forms with method POST when the documents they returned are sought with the PREV_DOC command or from the History List (off)
# @flag -rlogin                                 disable rlogins (off)
# @flag -scrollbar                              toggles showing scrollbar (off)
# @flag -scrollbar_arrow                        toggles showing arrows at ends of the scrollbar (on)
# @flag -selective                              require .www_browsable files to browse directories
# @option -session <FILENAME>                   resumes from specified file on startup and saves session to that file on exit
# @option -sessionin <FILENAME>                 resumes session from specified file
# @option -sessionout <FILENAME>                saves session to specified file
# @flag -short_url                              enables examination of beginning and end of long URL in status line (off)
# @flag -show_cfg                               Show `LYNX.CFG' setting (off)
# @flag -show_cursor                            toggles hiding of the cursor in the lower right corner (on)
# @flag -show_rate                              toggles display of transfer rate (on)
# @option -socks5_proxy <URL> <via which>       SOCKS5 proxy to connect (unrelated to -nosocks!)
# @flag -soft_dquotes                           toggles emulation of the old Netscape and Mosaic bug which treated '>' as a co-terminator for double-quotes and tags (off)
# @flag -source                                 dump the source of the first file to stdout and exit
# @flag -stack_dump                             disable SIGINT cleanup handler (off)
# @flag -startfile_ok                           allow non-http startfile and homepage with -validate (off)
# @flag -stderr                                 write warning messages to standard error when -dump or -source is used (off)
# @flag -stdin                                  read startfile from standard input (off)
# @flag -tagsoup                                use TagSoup rather than SortaSGML parser (off)
# @flag -telnet                                 disable telnets (off)
# @option -term                                 set terminal type to TERM
# @flag -tlog                                   toggles use of a Lynx Trace Log for the current session (on)
# @flag -tna                                    turn on "Textfields Need Activation" mode (off)
# @flag -trace                                  turns on Lynx trace mode (off)
# @option -trace_mask[`_choice_trace_mask`]     customize Lynx trace mode (0)
# @flag -traversal                              traverse all http links derived from startfile
# @flag -trim_blank_lines                       toggle trimming of leading/trailing/collapsed-br blank lines (on)
# @flag -trim_input_fields                      trim input text/textarea fields in forms (off)
# @flag -underline_links                        toggles use of underline/bold attribute for links (off)
# @flag -underscore                             toggles use of _underline_ format in dumps (off)
# @flag -unique_urls                            toggles use of unique-urls setting for -dump and -listonly options (off)
# @flag -update_term_title                      enables updating the title of terminal emulators (off)
# @flag -use_mouse                              turn on mouse support (off)
# @option -useragent <Name>                     set alternate Lynx User-Agent header
# @flag -validate                               accept only http URLs (meant for validation) implies more restrictions than -anonymous, but goto is allowed for http and https (off)
# @flag -verbose                                toggles [LINK], [IMAGE] and [INLINE] comments with filenames of these images (on)
# @flag -version                                print Lynx version information
# @flag -vikeys                                 enable vi-like key movement (off)
# @option -width <NUMBER>                       screen width for formatting of dumps (default is 80)
# @flag -with_backspaces                        emit backspaces in output if -dumping or -crawling (like 'man' does) (off)
# @flag -xhtml_parsing                          enable XHTML 1.0 parsing (off)
# @arg file

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"