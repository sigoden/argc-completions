_patch_help() { 
    $@ --help | \
    sed \
        -e 's/^ -A/ -A /' \
        -e 's/^ -h, -?,/ -h,/' \
        -e '/:deps alias:/, /^$/ d' \

}

_patch_table() { 
    _patch_table_edit_options \
        '-A;-*[`_choice_alias`]' \
        '-M;-*[`_choice_alias`]' \
        '-T;-*[`_choice_tool`]' \
        '-X;-*[`_choice_alias_ext`]' \
    | \
    _patch_table_edit_arguments ';;' 'args;*[`_choice_args`]'
     
}

_choice_alias() {
    if command -v bb > /dev/null; then
        bb -e "$(_helper_bb_code)"
    fi
}

_choice_alias_ext() {
    _choice_alias
    echo -e ":deps\tManage deps"
}

_choice_tool() {
    if command -v bb > /dev/null; then
        bb -e "$(_helper_bb_code)" tools
    fi
}

_choice_args() {
    if [[ "${argc_X[0]}" == ":deps" ]] && [[ "${#argc__positionals[@]}" -eq 1 ]]; then
        clojure --help | sed -n '/:deps alias:/,/^$/ {//!p}'| sed -e 's/ -X:deps \(\S\+\)\s*\(.*\)$/\1\t\2/'
    else
        _argc_util_comp_path
    fi
}

_helper_bb_code() {
    cat <<-'EOF'
(require '[babashka.fs :as fs])

(def config (->> (with-out-str (babashka.tasks/clojure "-Sdescribe"))
                 clojure.edn/read-string))

(defn configs []
  (reverse (:config-files config)))

(defn aliases-from-config [path]
  (->> (clojure.edn/read-string (slurp path))
       :aliases
       keys
       (map name)
       sort))

(defn installed-tools
  []
  (as-> config $
    (:config-dir $)
    (str $ "/tools/")
    (fs/match $ "regex:.*\\.edn")
    (map fs/file-name $)
    (map #(fs/strip-ext % {:ext "edn"}) $)))

(defn aliases []
  (->> (configs)
       (mapcat aliases-from-config)
       dedupe))

(run! println
      (case (first *command-line-args*)
        "tools" (installed-tools)
        (aliases)))
EOF
}
