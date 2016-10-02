#!/bin/bash

cd

git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si --noconfirm
cd ..
rm -rf /package-query


git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si --noconfirm
cd ..
rm -rf /yaourt
