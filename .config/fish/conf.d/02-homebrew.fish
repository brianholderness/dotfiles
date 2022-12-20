if test (uname) = "Darwin"
    set -l brew_path "/opt/homebrew/bin/brew"
    if bh_is_valid_file "$brew_path" > /dev/null
        # Set PATH, MANPATH, etc., for Homebrew.
        eval "$(/opt/homebrew/bin/brew shellenv)"
        bh_health_check_save_status "homebrew" "-" ""
    else
        bh_health_check_save_status "homebrew" "x" "brew appears to not be installed"
    end
end
