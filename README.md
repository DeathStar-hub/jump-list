# jl - Jump and List for Fish Shell

**Two functions for faster directory jumping:**

| Command | What it does |
|---------|-------------|
| `jl myproject` | Direct jump + auto-list |
| `zi` | Interactive fzf picker + auto-list |

---

**Quick Install:**

1. Install zoxide (and fzf for `zi`):
```bash
sudo pacman -S zoxide fzf
```

2. Add to ~/.config/fish/config.fish:
```fish
alias cd z
```

3. Copy both functions:
```bash
mkdir -p ~/.config/fish/functions/
cp *.fish ~/.config/fish/functions/
```

4. Restart terminal

## Usage

```fish
jl myproject   # Direct jump + list contents
zi            # Interactive fzf picker + list contents (fzf must be installed)
```

## How They Work

```fish
# jl - direct jump + ls
function jl
    cd $argv; and ls
end

# zi - interactive fzf + ls
function zi
    cd (zoxide query --interactive $argv); and ls
end
```

- `cd` = zoxide (alias j z)
- `zoxide query --interactive` = opens fzf to pick from history
- `ls` = shows directory contents after jumping

---

**License:** MIT