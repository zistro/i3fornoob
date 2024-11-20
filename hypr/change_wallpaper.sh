
# Directory containing wallpapers
WALLPAPER_DIR="$HOME/.config/walls"

# Get a list of wallpapers and extract only the filenames
wallpapers=("$WALLPAPER_DIR"/*)
wallpaper_names=()

for wallpaper in "${wallpapers[@]}"; do
    wallpaper_names+=("$(basename "$wallpaper")")
done

# Use rofi to select a wallpaper
selected_wallpaper=$(printf '%s\n' "${wallpaper_names[@]}" | rofi -dmenu -i -p "Select Wallpaper:")

# Check if a wallpaper was selected
if [ -n "$selected_wallpaper" ]; then
    # Find the full path of the selected wallpaper
    full_path="$WALLPAPER_DIR/$selected_wallpaper"
    # Set the selected wallpaper using swww
    swww img "$full_path"
else
    echo "No wallpaper selected."
fi

