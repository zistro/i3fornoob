# i3fornoob
This is intented for arch users. If you want to use this for another distro plz check if you package manager has these packages listed below.
I will try to make this as simple as possible.

# Lesgooo 
* Install i3wm with archinstall select i3 in profiles section and for audio select pipewire

* Install an AUR helper. I will reccomend paru
  ```
  sudo pacman -S --needed base-devel
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg -si

* Then install these

  ```
  sudo pacman -S feh picom polybar kitty qimgv rofi nwg-look pavucontrol thunar btop neovim xcolor xclip git 
