echoGreen "*** Installing libinput-gestures ***"
gpasswd -a $USER input
install xdotool
install wmctrl
install libinput-tools
git clone https://github.com/bulletmark/libinput-gestures.git ~/Programs/libinput-gestures
~/Programs/libinput-gestures/.libinput-gestures-setup install
libinput-gestures-setup autostart
libinput-gestures-setup start
echoGreen "*** libinput-gestures is ready ***"
