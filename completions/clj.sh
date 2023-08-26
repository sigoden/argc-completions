#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -A-*[`_choice_alias`] <aliases>        Use concatenated aliases to modify classpath
# @option -X-*[`_choice_alias_ext`] <aliases>    Use concatenated aliases to modify classpath or supply exec fn/args
# @option -T-*[`_choice_tool`] <toolname|aliases>  Invoke tool by name or via aliases ala -X
# @option -M-*[`_choice_alias`] <aliases>        Use concatenated aliases to modify classpath or supply main opts
# @flag -P                                       Prepare deps - download libs, cache classpath, but don't exec
# @flag -Jopt                                    Pass opt through in java_opts, ex: -J-Xmx512m
# @option -Sdeps <EDN>                           Deps data to use as the last deps file to be merged
# @flag -Spath                                   Compute classpath and echo to stdout only
# @flag -Stree                                   Print dependency tree
# @option -Scp <CP>                              Do NOT compute or cache classpath, use this one instead
# @flag -Srepro                                  Ignore the ~/.clojure/deps.edn config file
# @flag -Sforce                                  Force recomputation of the classpath (don't use the cache)
# @flag -Sverbose                                Print important path info to console
# @flag -Sdescribe                               Print environment and command parsing info as data
# @flag -Sthreads                                Set specific number of download threads
# @flag -Strace                                  Write a trace.edn file that traces deps expansion
# @flag --version                                Print the version to stdout and exit
# @flag -version                                 Print the version to stderr and exit
# @option -i --init <path>                       Load a file or resource
# @option -e --eval <string>                     Eval exprs in string; print non-nil values
# @option --report <target>                      Report uncaught exception to "file" (default), "stderr", or "none"
# @option -m --main <ns-name>                    Call the -main function from namespace w/args
# @flag -r --repl                                Run a repl
# @flag -h --help                                Print this help message and exit
# @arg args*[`_choice_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"