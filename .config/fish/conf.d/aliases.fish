function dots --wraps git -d "Alias for dotfiles git"
    git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end
