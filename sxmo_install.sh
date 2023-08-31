#!/bin/bash

sudo apk install i3blocks cairo-dev pango-dev

git clone https://github.com/L0Wigh/wvkbd-french
cd wvkbd-french && make && make install

# Copy sxmo folder
cp -r ./config/sxmo/ ~/.config/sxmo/

# Copy i3blocks folder
cp -r ./config/i3blocks/ ~/.config/i3blocks/

# Copy foot folder
cp -r ./config/foot/ ~/.config/foot/
