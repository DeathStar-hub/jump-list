# jl - Jump + List
# Direct jump: jl myproject -> jump to directory and list contents
function jl
    cd $argv; and ls
end