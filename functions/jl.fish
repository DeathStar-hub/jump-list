# jl - Jump + List (with optional fzf)
# Usage: jl           # interactive fzf picker
#        jl myproject  # direct jump + list
function jl
    if count $argv > /dev/null
        cd $argv; and ls
    else
        cd (zoxide query --interactive $argv); and ls
    end
end
