# Ghostty + Claude Code Auto-split Configuration

# Function to start Claude Code in a split pane
start_claude_split() {
  # Check if we're in Ghostty
  if [[ -z "$GHOSTTY_RESOURCES_DIR" ]]; then
    echo "Not running in Ghostty terminal"
    return 1
  fi

  # Use AppleScript to create split and send commands
  osascript <<EOF
tell application "System Events"
  tell process "Ghostty"
    # Create right split with Cmd+D (50-50, resize manually with Cmd+Ctrl+Left if needed)
    keystroke "d" using command down

    # Wait for split to be created
    delay 0.3

    # Type the commands to authenticate and start Claude
    keystroke "gcpclaude && claude"

    # Press Enter
    key code 36
  end tell
end tell
EOF
}

# Function to auto-start on first Ghostty window
# Only runs once per Ghostty session
if [[ -n "$GHOSTTY_RESOURCES_DIR" && -z "$GHOSTTY_CLAUDE_STARTED" ]]; then
  # Mark as started to prevent multiple runs
  export GHOSTTY_CLAUDE_STARTED=1

  # Uncomment the line below to auto-start Claude split on every new Ghostty window
  # start_claude_split
fi

# Manual command alias
alias claude-split='start_claude_split'
