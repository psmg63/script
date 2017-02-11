#!/bin/sh

git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git

sudo pacman -S libxcb xcb-util xcb-util-keysms xcb-util-wm gcc make

mkdir ~/.config/{bspwm,sxhkd}
cp -v bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
cp -v bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/bspwm/bspwmrc

rm -rf ~/.xinitrc
touch ~/.xinitrc
echo "sxhkd &" >> ~/.xinitrc
echo "exec bspwm" >> ~/.xinitrc
