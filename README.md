# Simple ZSH nix shell
- adds an icon to `$RPS1` when you are in a nix shell
- makes nix shells drop you into zsh by default
- when you exit from the zsh nix shell, you will drop back into the invoking zsh shell, so if you need to go into bash for whatver reason invoke `bash` from the zsh shell.

<img width="100%" alt="image" src="https://user-images.githubusercontent.com/24906808/219745149-729aab07-1b66-45fa-b491-9ecf217407b6.png">

# Install
**it is necessary** to install both plugins to achieve the full functionality of this plugin

`source simple-zsh-nix-shell.zsh`  manually in `$ZDOTDIR/.zshrc`, or with a zsh plugin manager  
This plugin sets `$RPS1` to show that you're in a nix shell when `$IN_NIX_SHELL` is defined, and exports the script to be run by the bash plugin

`source simple-zsh-nix-shell.bash` manually in `$HOME/.bashrc`, or with a bash plugin manager  
This plugin drops you into a zsh shell when you first enter a nix shell
