switch (uname)
case Linux
    set fnm_path "$HOME/.fnm"
    if bh_is_valid_directory "$fnm_path" > /dev/null
        fish_add_path --path "$fnm_path"
        eval "$(fnm env --use-on-cd)"
        bh_health_check_save_status "node" "-" ""
    else
        bh_health_check_save_status "node" "x" "node (fnm) appears to not be installed"
    end
case Darwin
    if bh_is_valid_file "$(brew --prefix)/bin/fnm" > /dev/null
        eval "$(fnm env --use-on-cd)"
        bh_health_check_save_status "node" "-" ""
    else
        bh_health_check_save_status "node" "x" "node (fnm) appears to not be installed"
    end
end
