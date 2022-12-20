function bh_is_valid_directory -a directory_path -d "Checks to make sure directory exists, is a regular directory, and is readable"
    set -l error_message "$directory_path cannot be referenced"
    if test ! -e "$directory_path"
        bh_printerr "$error_message" "Directory does not exist"
    else if test ! -d "$directory_path"
        bh_printerr "$error_message" "Directory is not a regular directory"
    else if test ! -r "$directory_path"
        bh_printerr "$error_message" "This process does not have permissions to read directory"
    else
        return (true)
    end
    return (false)
end
