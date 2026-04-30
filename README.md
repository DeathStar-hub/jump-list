# jl - Jump and List for Fish Shell

**One command, two modes:**

| Command | What it does |
|---------|-------------|
| `jl` | Interactive fzf picker + list |
| `jl myproject` | Direct jump + list |

---

**Quick Install:**

1. Install zoxide (+ fzf for interactive mode):
```bash
sudo pacman -S zoxide fzf
```

2. Ensure zoxide initializes in fish (add to ~/.config/fish/config.fish if not already):
```fish
zoxide init fish | source
```

3. Copy function:
```bash
mkdir -p ~/.config/fish/functions/
cp jl.fish ~/.config/fish/functions/
```

4. Restart terminal

## Usage

```fish
jl myproject   # Direct jump + list contents
jl            # Interactive fzf picker + list contents
```

## How It Works

```fish
function jl
    if count $argv > /dev/null
        cd $argv; and ls
    else
        cd (zoxide query --interactive $argv); and ls
    end
end
```

- With argument: direct jump (like `cd project`)
- Without argument: opens fzf to pick from directory history

**Requirements:**
- zoxide
- fzf (for interactive mode without arguments)

---

**License:** MIT