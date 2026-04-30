# jl - Jump and List for Fish Shell

**A tiny fish shell function: jump to a directory, then automatically see what's inside.**

Instead of typing two commands every time:
```
j myproject
ls
```

Just do:
```
jl myproject
```

---

**Quick Install (Arch Linux):**
```bash
# 1. Install zoxide
sudo pacman -S zoxide

# 2. Add to ~/.config/fish/config.fish:
alias j z

# 3. Copy this function
mkdir -p ~/.config/fish/functions/
cp jl.fish ~/.config/fish/functions/

# 4. Restart terminal
```

## Usage

```fish
jl projectname    # Jump to directory and list contents
jl -l foo       # List matches without jumping
jl              # List all visited directories
```

## How It Works

```fish
function jl
    j $argv; and ls
end
```

- `j` = zoxide (you get this from zoxide)
- `ls` = shows directory contents
- `and` = only runs ls if j succeeds

## Files

- `jl.fish` - The function (copy to `~/.config/fish/functions/`)

---

**License:** MIT