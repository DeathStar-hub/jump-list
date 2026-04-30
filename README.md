# jl - Jump + List for Fish Shell

**Fish shell utilities: jump to directories and auto-list contents**

Keywords: fish shell, zoxide, autojump, autojump alternative, directory jumper, terminal productivity, fzf, fuzzy finder, interactive picker, fish functions, fish plugins, command line productivity, cli tools, terminal hacks, cd enhancement, smart cd, directory navigation, frequent directories, frecency, bookmark jumper

Two functions included:

| Command | What it does |
|---------|-------------|
| `jl myproject` | Direct jump + auto-list contents |
| `ji` | Interactive fzf picker + auto-list contents |

---

**Direct Jump + List**

Instead of:
```
cd myproject
ls
```

Just do:
```
jl myproject
```

**Interactive Jump + List**

```
ji
```
Opens fzf to pick from your directory history, then lists the selected directory.

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

3. Copy both functions:
```bash
mkdir -p ~/.config/fish/functions/
cp jl.fish ji.fish ~/.config/fish/functions/
```

4. Restart terminal

## Usage

```fish
jl myproject   # Direct jump to "myproject" and list contents
jl            # Direct jump (must provide name)
ji            # Interactive fzf picker, pick directory, then list
```

## How They Work

```fish
# jl - direct jump + ls
function jl
    cd $argv; and ls
end

# ji - interactive fzf picker + ls
function ji
    cd (zoxide query --interactive $argv); and ls
end
```

## What is zoxide?

zoxide is a smarter cd command, inspired by z and autojump. It learns which directories you visit most frequently and lets you jump with a few keystrokes.

Visit https://github.com/ajeetdsouza/zoxide for full documentation.

## Similar Projects

- autojump (original)
- z.lua (lua version)
- z - fast tab completion for fish
- fasd (quick access to files and directories)

This project combines zoxide with auto-listing for a smoother workflow.

---

**License:** MIT

**Author:** Your Name