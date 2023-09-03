#!/bin/bash
wifi_line_get=$(cat $XDG_RUNTIME_DIR/sxmobar | grep -n "priority=30" | cut -d ":" -f 1)
wifi_line=$((1+$wifi_line_get))
wifi_line+="q;d"
eval_wifi="cat $XDG_RUNTIME_DIR/sxmobar | cut -d \"=\" -f 2 | sed '$wifi_line' | cut -d \"%\" -f 1"
wifi=$(eval $eval_wifi)

echo $wifi
