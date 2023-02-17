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

nix() {
  if [ $# -lt "1" ]; then
    command nix "$@"
    return
  fi
  subcommand="$1"
  shift
  case $subcommand in
    develop|shell|run)
      has_arg=$(check_arg "--command" "$@")
      if [ has_arg != "1" ];
      then
        command nix "$subcommand" "$@" --command zsh
      else
        command nix "$subcommand" "$@"
      fi
      ;;
    *)
      command nix "$@";;
  esac
}

nix-shell() {
  case $@ in
    "")
      has_arg=$(check_arg "--run" "$@")
      if [ has_arg != "1" ];
      then
        command nix-shell --run zsh
      else
        command nix-shell "$@"
      fi
      ;;
    *)
      command nix-shell "$@";;
  esac
}
