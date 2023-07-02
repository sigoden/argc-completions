import os
import re
from subprocess import Popen, PIPE
from xonsh.completers.tools import *
from xonsh.completers._aliases import _add_one_completer

if 'ARGC_COMPLETIONS_DIR' in globals():
    ARGC_COMPLETIONS_DIR = os.path.expanduser(ARGC_COMPLETIONS_DIR)
else:
    ARGC_COMPLETIONS_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'completions'))

ARGC_COMPLETIONS_EXTEND_CMDS = list(filter(lambda c: not c.endswith(".sh"), os.listdir(ARGC_COMPLETIONS_DIR)))


@contextual_command_completer
def _argc_completions_completer(context):
    if len(context.args) == 0:
        return
    args = [v.value for v in context.args[0:context.arg_index]]
    args.append(context.raw_prefix)
    cmd = os.path.splitext(os.path.basename(args[0]))[0] 
    expand = False
    scriptfile = ""
    if len(args) > 2 && cmd in ARGC_COMPLETIONS_EXTEND_CMDS:
        subcmd = args[1]
        if re.search('^[A-Za-z0-9]', subcmd) != None:
            scriptfile = os.path.join(ARGC_COMPLETIONS_DIR, cmd, subcmd + '.sh')
            if os.path.exists(scriptfile):
                expand = True
    if expand:
        args = args[1:]
    else:
        scriptfile = os.path.join(ARGC_COMPLETIONS_DIR, cmd + '.sh')
        if not os.path.exists(scriptfile):
            return

    output, _ = Popen(['argc', '--argc-compgen', 'xonsh', scriptfile, *args], stdout=PIPE, stderr=PIPE).communicate()
    candidates = output.decode().split('\n')
    candidates.pop()
    result = set()
    skip = 0
    if len(candidates) == 0:
        result.add(RichCompletion(""))
        return result

    for v in candidates:
        parts = v.split('\t')
        value = parts[0]
        if parts[1] == "1":
            value = value + " "
        result.add(RichCompletion(value, display=parts[2], description=parts[3], prefix_len=len(args[-1]), append_closing_quote=False))
        
    return result
_add_one_completer('argc_completions', _argc_completions_completer, 'start')