go_exec() {
    if [[ $# -lt 1 ]]; then
        echo "goexec: No arguments provided"
        return 1
    fi
    local exe=$1
    shift
    $GOPATH/bin/$exe $@
}

alias goexec=go_exec
