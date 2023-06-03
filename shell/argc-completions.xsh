import os
import re
from subprocess import Popen, PIPE
from xonsh.completers.tools import RichCompletion
from xonsh.completers.tools import *
from xonsh.completers._aliases import _add_one_completer

if 'ARGC_COMPLETIONS_DIR' in ${...}:
    ARGC_COMPLETIONS_DIR = os.path.expanduser($ARGC_COMPLETIONS_DIR)
else:
    ARGC_COMPLETIONS_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'completions'))

ARGC_COMPLETIONS_EXTEND_CMDS = list(filter(lambda c: not c.endswith(".sh"), os.listdir(ARGC_COMPLETIONS_DIR)))

@contextual_command_completer
def _argc_completions_completer(context):
    if len(context.args) == 0:
        return
    words = [v.value for v in context.args[0:context.arg_index]]
    words.append(context.prefix)
    word1 = os.path.splitext(os.path.basename(words[0]))[0] 
    expand = False
    scriptfile = ""
    line = ""
    if len(words) > 2 && word1 in ARGC_COMPLETIONS_EXTEND_CMDS:
        word2 = words[1]
        if re.search('^[A-Za-z0-9]', word2) != None:
            scriptfile = os.path.join(ARGC_COMPLETIONS_DIR, word1, word2 + '.sh')
            if os.path.exists(scriptfile):
                expand = True
    if expand:
        line = ' '.join(words[2:]) 
    else:
        scriptfile = os.path.join(ARGC_COMPLETIONS_DIR, word1 + '.sh')
        if not os.path.exists(scriptfile):
            return
        line = ' '.join(words[1:]) 
    if line == '':
        line = ' '
    output, _ = Popen(['argc', '--argc-compgen', 'fish', scriptfile, line], stdout=PIPE, stderr=PIPE).communicate()
    candicates = output.decode().split('\n')
    candicates.pop()
    result = set()
    if candicates[0] == '__argc_comp:file' or candicates[0] == '__argc_comp:dir':
        return
    for v in candicates:
        parts = v.split('\t')
        value = parts[0]
        desc = '' if len(parts) == 1 else parts[1]
        result.add(RichCompletion(value, display=value, description=desc, prefix_len=len(context.raw_prefix), append_closing_quote=False))
    return result
    
_add_one_completer('argc_completions', _argc_completions_completer, 'start')