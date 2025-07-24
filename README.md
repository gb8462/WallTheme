# 🌌 WallTheme - Hyprland Theme Switcher

A personal theme switcher for Hyprland, built with Bash.  
Automatically sets wallpapers, Waybar/Wofi themes, Alacritty config, and more.  
GUI version coming soon!

## 🛠️ Installation

1. Install required packages (Arch-based):
    
    ```bash
    sudo pacman -S alacritty hyprpaper git rsync wofi waybar
    ``` 
2. Clone the repository:
    
    ```bash
    git clone https://github.com/gb8462/WallTheme.git
    cd WallTheme
    ```
3. Run the theme script:
    ```bash
    ./script.sh
    ```

## ✨ Features
📁 Auto-syncs wallpapers to /usr/share/wallpaper if missing or updated

🎯 Applies Hyprland, Waybar, Wofi, and Alacritty themes

🧠 Smart script checks for missing dependencies

💻 CLI-based menu interface (GUI in progress)

⚡ Lightweight, minimal, fast



## 🎨 Themes Preview

### AnimeGirl

<img src="https://github.com/user-attachments/assets/fd26cb32-6383-42ad-9a26-745ea27384c4" width="600"/>

---

### Dark (Void)

<img src="https://github.com/user-attachments/assets/2f4211cf-7589-446a-a817-4793092d654a" width="600"/>

---

### Ninomae Ina'nis

<img src="https://github.com/user-attachments/assets/ba1746a6-86a8-4619-87bd-0a86c8b5aa0f" width="600"/>

## 🚧 Roadmap

- [x] CLI menu for theme selection  
- [x] Dynamic config setup (Alacritty, Wofi, Waybar, Hypr)  
- [x] Wallpaper sync/check logic  
- [ ] GUI with theme previews  
- [ ] More theme packs  
- [ ] Better error messages and logging  

## 📜 License
This project is licensed under the MIT License, which means:

✅ You can use, copy, modify, and share it

🪪 Just keep the original copyright

🔒 No warranty (you're using it at your own risk)

See the full license here: MIT License on choosealicense.com
