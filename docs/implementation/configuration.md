# Broot Configuration

## Overview

Broot is configured using HJSON files in `~/.config/broot/`. Our configuration includes:

- `conf.hjson` - Main configuration file
- `verbs.hjson` - Custom commands and shortcuts
- `skins/` - Color themes for different terminal backgrounds

## Key Configuration Choices

### Editor Integration
- Uses `$EDITOR` environment variable for file editing
- Ctrl-E opens files in the configured editor
- Editor integration doesn't leave broot by default

### Themes
- **Dark terminals**: Uses `dark-blue.hjson` skin with MochaDark syntax theme
- **Light terminals**: Uses `white.hjson` skin with base16-ocean.light syntax theme

### Special Paths
- `~/.config` is always shown (including hidden files)
- `/media` directories are excluded from listing and size calculations
- `trav` directories are always shown and listed

### Custom Shortcuts
- Ctrl-T: Opens terminal in current directory
- Ctrl-B: Creates backup copy of selected file
- Ctrl-E: Opens file in editor

## File Structure

```
~/.config/broot/
├── conf.hjson          # Main configuration
├── verbs.hjson         # Custom commands
├── launcher/           # Shell integration
│   └── bash/br         # Bash function for broot
└── skins/              # Color themes
    ├── dark-blue.hjson # Dark theme (active)
    └── white.hjson     # Light theme
```

## Installation

The configuration is managed through stow:

```bash
stow broot
```

This creates symlinks from `~/.config/broot/` to the files in this directory.