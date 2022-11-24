main () {
    if [[ $# -ne 1 ]]; then
        echo "Usage: error_handling.sh <person>"
        return 129
    fi
    echo "Hello, ${1}"
    return 0
}

main "$@"
