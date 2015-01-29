function vi {
    git rev-parse 2&> /dev/null
    if [ $? -eq 0 ]; then
        name=$(basename `git rev-parse --show-toplevel`)
        tmux rename-window "vim: $name"
    fi
    vim $1
    tmux set-window-option automatic-rename on &> /dev/null
}