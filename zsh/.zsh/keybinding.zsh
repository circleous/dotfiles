# keybinds
bindkey -e

if [[ -v TMUX ]]; then
  bindkey "^[[1~"    beginning-of-line   # HOME
  bindkey "^[[4~"    end-of-line         # END
  bindkey "^[[1;3C"  forward-word        # CTRL + ->
  bindkey "^[[1;3D"  backward-word       # CTRL + <-
elif [[ -v VIM ]]; then
  bindkey "^[[H"     beginning-of-line   # HOME
  bindkey "^[[F"     end-of-line         # END
  bindkey "^[[C"     forward-word        # CTRL + ->
  bindkey "^[[D"     backward-word       # CTRL + <-
elif [[ -v ALACRITTY_SOCKET || -v WEZTERM_UNIX_SOCKET ]]; then
  bindkey "^[[H"     beginning-of-line   # HOME
  bindkey "^[[F"     end-of-line         # END
  bindkey "^[[1;2C"  forward-word        # SHIFT + ->
  bindkey "^[[1;2D"  backward-word       # SHIFT + <-
else
  bindkey "^[[H"     beginning-of-line   # HOME
  bindkey "^[[F"     end-of-line         # END
  bindkey "^[[1;9C"  forward-word        # CTRL + ->
  bindkey "^[[1;9D"  backward-word       # CTRL + <-
fi

# fzf
# source $(brew --prefix fzf)/shell/key-bindings.zsh
