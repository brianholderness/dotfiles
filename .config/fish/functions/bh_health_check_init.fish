function bh_health_check_init -d "Initializes and clears the health check file"
    set -q XDG_DATA_HOME; or set -g XDG_DATA_HOME "$HOME/.local/share/fish"
    set -g bh_health_check_file "$XDG_DATA_HOME/health_check.tsv"
    printf 'Component\tStatus\tMessage\n---------\t------\t-------\n' > $bh_health_check_file
end

function bh_health_check_save_status -a component_name health_status message -d "Save a component's health status"
    printf '%s\t%s\t%s\n' "$component_name" "$health_status" "$message" >> $bh_health_check_file
end

function bh_health_check -d "Print the current status of each component"
    cat $bh_health_check_file | sed 's/\t/ \t/g' | column -t -s\t
end
