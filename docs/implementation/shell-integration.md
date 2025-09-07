# Shell Integration Implementation

## Overview

Broot requires shell integration to enable the `br` function, which allows broot to execute commands (like `cd`) in the parent shell rather than a subshell.

## Integration Files

### Bash Integration
- **File**: `.bashrc.d/broot.sh`
- **Purpose**: Provides the `br` function for bash shells
- **Stows to**: `~/.bashrc.d/broot.sh`

The bash function uses a temporary file to capture broot's output command and executes it in the current shell context.

### Fish Integration
- **File**: `.config/fish/functions/br.fish`
- **Purpose**: Provides the `br` function for fish shells
- **Stows to**: `~/.config/fish/functions/br.fish`

The fish function includes:
- `--wraps=broot` for proper completion delegation
- Uses `source` instead of `eval` for command execution
- Proper error handling with status code preservation

## Why This Approach

1. **Follows Environment Standards**: Shell integration files are placed in the standard locations (`.bashrc.d/` and `.config/fish/functions/`)

2. **Replaces System Launchers**: Instead of relying on broot's automatic launcher installation in `~/.local/share/broot/launcher/`, we manage the integration through stow

3. **Version Controlled**: Shell integration is now tracked in git and can be customized as needed

4. **Consistent with Other Tools**: Matches the pattern used by other Environment tools for shell integration

## Configuration Files

The main broot configuration files are located in `.config/broot/`:
- `conf.hjson` - Main configuration
- `verbs.hjson` - Custom commands and shortcuts  
- `skins/` - Color themes

See the respective config files for specific settings and customizations.