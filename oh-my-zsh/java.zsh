export JENV_ROOT=/usr/local/opt/jenv
export PATH="$HOME/.jenv/bin:$PATH"
function jenv() {
    unset -f jenv
    eval "$(jenv init -)"
    jenv "$@"
}
