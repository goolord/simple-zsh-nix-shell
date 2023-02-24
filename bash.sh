if ([ ! -z ${NIX_GCROOT+x} ] || [ ! -z ${IN_NIX_SHELL+x} ]) && [ -z ${MANUALLY_ENTERED_BASH+x} ] && [[ $- == *i* ]] ; then
  export MANUALLY_ENTERED_BASH=1
  PROMPT_COMMAND='zsh; exit'
fi
