# zi - Interactive Jump with FZF + List

**Jump interactively using fzf, then automatically list contents.**

Press tab or enter to search your directory history and pick where to go.

---

**Quick Install:**

1. Install zoxide + fzf:
```bash
sudo pacman -S zoxide fzf
```

2. Add to ~/.config/fish/config.fish:
```fish
alias cd z
alias zi "zoxide query --interactive"
```

3. Copy this function:
```bash
mkdir -p ~/.config/fish/functions/
cp zi.fish ~/.config/fish/functions/
```

4. Restart terminal

## Usage

```fish
zi          # Opens fzf to pick from your directory history
jl project  # Direct jump + list (non-interactive)
```

## How It Works

The function runs `zoxide query --interactive` (or just `zi`) which opens fzf, lets you pick a directory, then runs `ls` to show contents.

---

**License:** MIT