switch (uname)
case Linux
    set go_path "/usr/local/go"
    if bh_is_valid_directory "$go_path" > /dev/null
        fish_add_path --path "$go_path/bin"
        bh_health_check_save_status "golang" "-" ""
    else
        bh_health_check_save_status "golang" "x" "golang appears to not be installed"
    end
case Darwin
    if bh_is_valid_file "$(brew --prefix)/bin/go" > /dev/null
        bh_health_check_save_status "golang" "-" ""
    else
        bh_health_check_save_status "golang" "x" "golang appears to not be installed"
    end
end
