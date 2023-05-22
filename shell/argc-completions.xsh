import os
from subprocess import Popen, PIPE
from xonsh.completers.tools import RichCompletion
from xonsh.completers.tools import *

if 'ARGC_COMPLETIONS_DIR' in ${...}:
    _argc_completions_dir = os.path.expanduser($ARGC_COMPLETIONS_DIR)
else:
    _argc_completions_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'completions'))

@contextual_command_completer
def _argc_completions(context):
    if len(context.args) == 0:
        return
    scriptfile = os.path.join(_argc_completions_dir, context.args[0].value + '.sh')
    if not os.path.exists(scriptfile):
        return
    line = ' '.join([v.value for v in context.args[1:]]) 
    if len(context.prefix) == 0:
        line += ' '
    else:
        line += ' ' + context.prefix
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
    
from xonsh.completers._aliases import _add_one_completer
_add_one_completer('argc_completions', _argc_completions, 'start')