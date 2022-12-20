if type -q fzf
    set -x FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS --color=fg:#e5e9f0,bg:#3b4252,hl:#81a1c1 --color=fg+:#e5e9f0,bg+:#3b4252,hl+:#81a1c1 --color=info:#eacb8a,prompt:#bf6069,pointer:#b48dac --color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b"
    bh_health_check_save_status "fzf" "-" ""
else
    bh_health_check_save_status "fzf" "x" "fzf not found; is it installed and on PATH?"
end
