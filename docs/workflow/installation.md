# Broot Installation and Setup

## Installation

### Using Stow (Recommended)

```bash
# Install broot configuration
stow broot

# This will create symlinks for:
# ~/.config/broot/ -> Environment/broot/.config/broot/
# ~/.config/fish/functions/br.fish -> Environment/broot/.config/fish/functions/br.fish
# ~/.bashrc.d/broot.sh -> Environment/broot/.bashrc.d/broot.sh
```

### Manual Installation

If you need to install without stow:

```bash
# Link configuration directory
ln -sf ~/Environment/broot/.config/broot ~/.config/broot

# Link shell integration
ln -sf ~/Environment/broot/.config/fish/functions/br.fish ~/.config/fish/functions/br.fish
ln -sf ~/Environment/broot/.bashrc.d/broot.sh ~/.bashrc.d/broot.sh
```

## First-Time Setup

After installation, you may need to:

1. **Restart your shell** or source the integration files:
   ```bash
   # For bash
   source ~/.bashrc.d/broot.sh
   
   # For fish (automatic on next shell start)
   ```

2. **Test the installation**:
   ```bash
   br --help
   ```

## Updating Configuration

After making changes to broot configuration files:

1. **No action needed** - changes are immediately available since files are symlinked
2. **For shell integration changes**: Restart your shell or re-source the files

## Troubleshooting

### br command not found
- Ensure shell integration files are properly linked
- Restart your shell
- Check that broot binary is installed and in PATH

### Configuration not loading
- Verify symlinks: `ls -la ~/.config/broot`
- Check for syntax errors in configuration files
- Use `broot --help` to verify broot is working