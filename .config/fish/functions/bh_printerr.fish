function bh_printerr -a message reason -d "Print error message to stderr with message and optional reason"
    test -n "$reason"; and set -l reason ": $reason"
    printf '[ERROR] %s%s.\n' $message $reason
end
