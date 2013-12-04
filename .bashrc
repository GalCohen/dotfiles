[ -n "$PS1" ] && source ~/.bash_profile

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

. <(npm completion)


