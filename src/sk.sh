_patch_help() {
    _patch_help_run_man $@ | sed '/^ENVIRONMENT VARIABLES/,$ d'
}

_patch_table() {
    _patch_table_edit_options \
        '--algo;[`_choice_algo`]' \
        '--case(<CASE>);[smart|respect|ignore]' \
        '--layout;[`_choice_layout`]' \
        '--preview-window(<VALUE>);;Determine the layout of the preview window.' \
        '--tiebreak;*,[`_choice_tiebreak`]' \

}

_choice_algo() {
    cat <<-'EOF'
skim_v2	Almost always the one to choose
skim_v1	The legacy algorithm
clangd	 the one used by clangd for keyword completion
EOF
}

_choice_tiebreak() {
    cat <<-'EOF'
score	Score of the fuzzy match algorithm
index	Prefers line that appeared earlier in the input stream
begin	Prefers line with matched substring closer to the beginning
end	Prefers line with matched substring closer to the end
length	Prefers line with shorter length
-score	Score of the fuzzy match algorithm
-index	Prefers line that appeared earlier in the input stream
-begin	Prefers line with matched substring closer to the beginning
-end	Prefers line with matched substring closer to the end
-length	Prefers line with shorter length
EOF
}

_choice_layout() {
    cat <<-'EOF'
default	Display from the bottom of the screen
reverse	Display from the top of the screen
reverse-list	Display from the top of the screen, prompt at the bottom
EOF
}
