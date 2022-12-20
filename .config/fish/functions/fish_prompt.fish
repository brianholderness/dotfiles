set -g __fish_git_prompt_show_informative_status
set -g __fish_git_prompt_showuntrackedfiles
set -g __fish_git_prompt_showcolorhints

function fish_prompt
    set -l __last_command_exit_status $status

    set -l blue (set_color -o blue)
    set -l white (set_color -o white)
    set -l normal (set_color normal)

    set -l cwd (string join / (string split -rn -m3 / $PWD)[-3..-1])
    echo -s $white '[ ' $blue $cwd $normal (fish_git_prompt) $white ' ]'
    echo -s $white '> ' $normal
end

function append_new_line --on-event fish_postexec
    if test $argv[1] != 'clear' && test $argv[1] != 'clear -x' && test $argv[1] != 'reset'
        echo ''
    end
end
