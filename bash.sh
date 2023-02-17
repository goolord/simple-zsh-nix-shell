get_ns_script() {
  echo $3 # uhh hopefully it's the only argument lol
}

if ([ ! -z ${NIX_GCROOT+x} ] || [ ! -z ${IN_NIX_SHELL+x} ]) && [ -z ${MANUALLY_ENTERED_BASH+x} ] && [[ $- == *i* ]] ; then
  export MANUALLY_ENTERED_BASH=1
  process_invocation=$(ps -o args= -p $$)
  NS_SCRIPT=$(get_ns_script $process_invocation)
  if [[ -f $NS_SCRIPT ]]; then
    source $NS_SCRIPT
  fi
  zsh; exit
fi
