# jl - Jump + List

**Two functions:**

| Command | What it does |
|---------|-------------|
| `jl myproject` | Direct jump + list |
| `ji` | Interactive fzf picker + list |

---

**Quick Install:**

1. Install zoxide + fzf:
```bash
sudo pacman -S zoxide fzf
```

2. Ensure zoxide initializes in fish config:
```fish
zoxide init fish | source
```

3. Copy functions:
```bash
mkdir -p ~/.config/fish/functions/
cp jl.fish ji.fish ~/.config/fish/functions/
```

4. Restart terminal

## Usage

```fish
jl myproject   # Direct jump + list contents
ji            # Interactive fzf picker + list contents
```

## How They Work

```fish
# jl - direct jump + ls
function jl
    cd $argv; and ls
end

# ji - interactive fzf + ls
function ji
    cd (zoxide query --interactive $argv); and ls
end
```

**Requirements:**
- zoxide
- fzf

---

**License:** MIT