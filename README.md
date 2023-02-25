# Simple ZSH nix shell
- adds an icon to `$RPS1` when you are in a nix shell
- makes nix shells drop you into zsh by default
- when you exit from the zsh nix shell, you will drop back into the invoking zsh shell, so if you need to go into bash for whatver reason invoke `bash` from the zsh shell.

<img width="100%" alt="image" src="https://user-images.githubusercontent.com/24906808/219745149-729aab07-1b66-45fa-b491-9ecf217407b6.png">

# install
`source simple-zsh-nix-shell.zsh` manually or with a plugin manager

add this to your `~/.bashrc` to land in zsh your first time entering bash in a nix shell. this is considerably less hacky than a wrapper around nix/nix-shell imo
```bash
if [ ! -z ${SIMPLE_ZSH_NIX_SHELL_BASH+x} ] ;
  then source $SIMPLE_ZSH_NIX_SHELL_BASH
fi
```
