#!/bin/bash

# Remove older config
rm -rf config
mkdir config

# Copy sxmo folder
cp -r ~/.config/sxmo ./config/sxmo

# Copy i3blocks folder
cp -r ~/.config/i3blocks ./config/i3blocks

# Copy foot folder
cp -r ~/.config/foot ./config/foot


