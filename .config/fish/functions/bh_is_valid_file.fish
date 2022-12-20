function bh_is_valid_file -a file_path -d "Checks to make sure file exists, is a regular file, and is readable"
    set -l error_message "$file_path cannot be referenced"
    if test ! -e "$file_path"
        bh_printerr "$error_message" "File does not exist"
    else if test ! -f "$file_path"
        bh_printerr "$error_message" "File is not a regular file"
    else if test ! -r "$file_path"
        bh_printerr "$error_message" "This process does not have permissions to read file"
    else
        return (true)
    end
    return (false)
end
