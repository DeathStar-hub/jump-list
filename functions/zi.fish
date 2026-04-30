# zi - Interactive Jump (fzf) + List
# Interactive: zi -> fzf picker, then jump and list
function zi
    cd (zoxide query --interactive $argv); and ls
end