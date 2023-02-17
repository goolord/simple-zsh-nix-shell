function in_nix_shell() {
  if [ ! -z ${IN_NIX_SHELL+x} ];
    then echo " nix ";
  fi
}

RPS1="%F{yellow}%b$(in_nix_shell)%f$RPS1"

check_arg() {
  arg="$1"
  shift
  for i in "$@" ; do
    if [[ $i == $arg ]] ; then
      echo "1"
      return 1
    fi
  done
}

export SIMPLE_ZSH_NIX_SHELL_BASH=${0:A:h}/bash.sh
