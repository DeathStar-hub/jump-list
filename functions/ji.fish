# ji - Interactive Jump (fzf) + List
# Interactive: ji -> fzf picker, then jump and list
function ji
    cd (zoxide query --interactive $argv); and ls
end