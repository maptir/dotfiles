# My dotfiles for Ubuntu

You need to install **curl** first for all installation.

```shell
sudo apt install curl
```

## Installation:
Run this code on your terminal.

```shell
bash -c "$(curl -LsS https://raw.githubusercontent.com/zepalz/dotfiles/master/starter.sh)"
```

### Programs that install
- Guake
- libinput-gestures
- Oh-My-Zsh
- GNOME Tweak tools
- Skype
- Screenfetch
- Atom
- Eclipse
- Android Studio

Or if you want to install only some of the program you can use this.

Programs | Run
--- | ---
Guake | `bash -c "$(curl -LsS https://raw.githubusercontent.com/zepalz/dotfiles/master/starter.sh)" guake`
libinput-gestures | `bash -c "$(curl -LsS https://raw.githubusercontent.com/zepalz/dotfiles/master/starter.sh)" libinput-gestures`
Oh-My-Zsh | `bash -c "$(curl -LsS https://raw.githubusercontent.com/zepalz/dotfiles/master/starter.sh)" zsh`

Setup For **macbuntu**
1. Search and Open GNOME Tweak Tools.
2. Appearance > Themes > Applications -> Change to "GNOME-OSX-V"
3. Appearance > Themes > Icons Change -> to "La Capitaine"
4. Fonts -> Change both Window Title & Interface to "Garuda Regular"
5. [Install Dash To Dock](https://extensions.gnome.org/extension/307/dash-to-dock/) (Add GNOME extension on browser and install it.)
