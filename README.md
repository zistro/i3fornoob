# i3fornoob
This is intented for arch users. If you want to use this for another distro plz check if you package manager has these packages listed below.
I will try to make this as simple as possible.Then boot into i3wm then do the following.

# Lesgooo 
* Install i3wm with archinstall select i3 in profiles section and for audio select pipewire


* Install git
  ```
  sudo pacman -S git


* Install an AUR helper. I will reccomend paru
  ```
  sudo pacman -S --needed base-devel
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg -si

* Then install these

  ```
  sudo pacman -S feh picom polybar kitty qimgv rofi nwg-look pavucontrol thunar btop neovim xcolor xclip dunst

* Install these fonts
  ```
  sudo pacman -S ttf-cascadia-code-nerd ttf-cascadia-mono-nerd ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-firacode-nerd ttf-iosevka-nerd ttf-iosevkaterm-nerd ttf-jetbrains-mono-nerd ttf-jetbrains-mono ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono autotiling noto-fonts-cjk

* Then clone this repo
  ```
  git clone https://github.com/zistro/i3fornoob.git

* Then copy folders in the .config folder and replace all. You should cut and paste the default config folder in a backup folder before copying my config files incase you get into some trouble.


* You can install fish fish config is already set you just need to copy
  ```
  paru -S fish oh-my-posh

* Change defualt shell
  ```
  chsh -s $(which zsh)

  
* Then reboot  



    
