function bh_safe_source -a file_path -d "Check if file is valid and source if it is"
    bh_is_valid_file "$file_path"; and source "$file_path"
end
