echoGreen "*** Installing libinput-gestures ***"
sudo gpasswd -a $USER input
install xdotool
install wmctrl
install libinput-tools
git clone https://github.com/bulletmark/libinput-gestures.git ~/Programs/libinput-gestures
cd ~/Programs/libinput-gestures
sudo ./libinput-gestures-setup install
libinput-gestures-setup autostart
echoGreen "*** libinput-gestures is ready ***"
