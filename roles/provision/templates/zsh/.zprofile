alias gitlog="git log --oneline -n10"

cdgr() {
    local root
    root=$(git rev-parse --show-toplevel) || return $?
    cd $root || return $?
}

alias ctw="cargo test --workspace"

ctp() {
    cargo test -p $(echo $1 | tr -d '/') ${@:2}
}
