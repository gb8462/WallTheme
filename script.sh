#!/bin/bash

# Wallpaper Theme Switcher Script

clear

# Define theme base path
BASE_DIR="/home/worm/Programming/WallTheme"

# Config paths
WAYBAR="$HOME/.config/waybar"
WOFI="$HOME/.config/wofi"
HYPR="$HOME/.config/hypr"
ALACRITTY="$HOME/.config/alacritty.toml"

# Menu
echo "Please select a theme:"
echo "
Choices:
  [1] Blues
  [2] Ninomae Ina'nis
  [3] Dark (Void)
"
read -p "Theme: " ThemeChoice

# Function to apply a theme
apply_theme() {
  local THEME_DIR="$1"

  # Make sure the theme directory exists
  if [ ! -d "$THEME_DIR" ]; then
    echo "Theme not found: $THEME_DIR"
    exit 1
  fi

  # Copy configs
  cp -r "$THEME_DIR/waybar/"* "$WAYBAR"
  cp -r "$THEME_DIR/wofi/"* "$WOFI"
  cp "$THEME_DIR/hyprpaper.conf" "$HYPR/hyprpaper.conf"
  cp "$THEME_DIR/hyprland.conf" "$HYPR/hyprland.conf"
  cp "$THEME_DIR/alacritty.toml" "$ALACRITTY"

  # Restart Waybar
  pkill waybar
  sleep 0.5
  hyprctl dispatch exec waybar > /dev/null 2>&1

  # Restart Hyprpaper (with safe wait)
  pkill hyprpaper
  while pgrep hyprpaper >/dev/null; do sleep 0.1; done
  hyprctl dispatch exec hyprpaper > /dev/null 2>&1

  echo -e "\n✅ Theme applied: $(basename "$THEME_DIR")"
}

# Case selection
case "$ThemeChoice" in
  1)
    apply_theme "$BASE_DIR/Blues"
    ;;
  2)
    apply_theme "$BASE_DIR/Ina"
    ;;
  3)
    apply_theme "$BASE_DIR/Void"
    ;;
  *)
    echo -e "\n❌ Invalid input. Please enter 1, 2, or 3."
    ;;
esac

# Final clean exit
tput sgr0
echo -e "\n🎉 Done switching theme!"
exit 0
