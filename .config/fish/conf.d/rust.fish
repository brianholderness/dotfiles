if bh_is_valid_directory "$HOME/.rustup" > /dev/null
    fish_add_path --path "$HOME/.cargo/bin/"
    bh_health_check_save_status "rust" "-" ""
else
    bh_health_check_save_status "rust" "x" "rust appears to not be installed"
end
