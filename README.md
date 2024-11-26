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
  sudo pacman -S feh picom polybar kitty qimgv rofi nwg-look pavucontrol thunar btop neovim xcolor xclip dunst maim autotiling

* Install these fonts
  ```
  sudo pacman -S ttf-cascadia-code-nerd ttf-cascadia-mono-nerd ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-firacode-nerd ttf-iosevka-nerd ttf-iosevkaterm-nerd ttf-jetbrains-mono-nerd ttf-jetbrains-mono ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono noto-fonts-cjk

* Then clone this repo
  ```
  git clone https://github.com/zistro/i3fornoob.git

* Then copy folders in the .config folder and replace all. You should cut and paste the default config folder in a backup folder before copying my config files incase you get into some trouble.


* You can install fish fish config is already set you just need to copy
  ```
  paru -S fish oh-my-posh

* Change defualt shell
  ```
  chsh -s $(which fish)

  
* Then reboot


* Copy theme.rasi from the rofi folder to ~/.local/share/rofi/themes/

* You're done
  
# Dual-booting and drive auto mounting
* If your're dual-booting or you want to mount your other drives do these
* First let's mount drive. For windows drives that use ntfs file system install this
  ```
  sudo pacmaan -S ntfs-3g
  ```
* Then get the uuid of the partition you want to mount
 ```
lsblk-f
```
* Then edit this file and add your drive uuid like below
 ```
sudo nano /etc/fstab
```
 ```
 UUID=yourUUID /mnt/winpart ntfs defaults,x-gvfs-show 0 0 
 ```
* Then unmount all drives and mount again if there's no error then you're good to go
  ```
  sudo umount -a
  ```
  ```
  sudo mount -a
  ```
* Mounting other os like windows on grub
* Install os-prober
  ```
    sudo pacman -S os-prober
  ```
* Edit grub file
  ```
  sudo nano /etc/default/grub
  ```  
* Uncomment the line
  ```
  GRUB_DISABLE_OS_PROBER=false
  ```
* Update grub config
  ```
  sudo grub-mkconfig -o /boot/grub/grub.cfg
  ```
* Reboot and check if it worked
* Done

        
# Hyprland


Let's say you have been using i3wm for few days and want to try hyprland. You can use both. If you're in Arch just install these packages 

```
paru -S cliphist pamixer grimblast hyprland xdg-desktop-portal-hyprland waybar swww hyprcursor hyprutils hyprwayland-scanner power-profiles-daemon hyprpicker xdg-desktop-portal-wlr
```
It should make it run just log out and login with hyprland. I have uploaded my hyprland config here you can use this by copying the hypr folder in the .config folder
use mod+w to change wallpaper after first login with my config.

# Preview
* i3wm
![i3](https://github.com/user-attachments/assets/234d5fd6-89df-4f06-8504-bee2e72b3ce3)


* hyprland 

![2024-11-23T19:12:38,662515164+06:00](https://github.com/user-attachments/assets/f8223aee-3521-437e-8ac5-4b5b9e88f478)
![2024-11-23T19:21:24,120375152+06:00](https://github.com/user-attachments/assets/cf8eef87-d461-469d-85ec-78e6fcc6c386)
![2024-11-23T19:16:22,671620536+06:00](https://github.com/user-attachments/assets/039ce19e-f7a0-4f4d-97df-f74e500dcbd1)

# Mentions


*I used config from these repos as my base and many thanks to them.

[catppuccin](https://github.com/catppuccin/catppuccin)


[simple-hyprland](https://github.com/gaurav210233/simple-hyprland)


[Typrcraft](https://github.com/typecraft-dev/dotfiles)
