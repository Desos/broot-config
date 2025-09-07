# Broot Usage Workflow

## Basic Navigation

### Starting Broot
```bash
br                    # Start in current directory
br /path/to/dir      # Start in specific directory
br -h                # Show help
```

### Search and Filter
- Type to search files and directories
- Use fuzzy matching by default
- Prefix searches:
  - `/pattern` - Regex search
  - `rn/pattern` - Regex search on name only
  - `c/pattern` - Search file contents

### Navigation
- Arrow keys or hjkl to move
- Enter to open directory or file
- Backspace to go up one level
- Ctrl-Q to quit

## Custom Commands

### File Operations
- `e` or Ctrl-E - Edit file in $EDITOR
- `create filename` - Create new file and open in editor
- Ctrl-B - Create backup copy of file

### Git Integration
- `gd` - Show git diff for file
- Alt-G - Toggle git status filter (if enabled)

### Terminal Integration
- Ctrl-T - Open terminal in current directory
- The `br` function allows broot to change your shell's directory

## Advanced Features

### Multi-Panel Mode
- Open second panel for file operations
- Copy/move files between panels

### Content Search
- Search inside files with `c/pattern`
- Preview files with syntax highlighting
- Navigate to specific lines in search results

### Git Integration
- View git status in file listings
- See git branch information
- Show insertions/deletions for modified files