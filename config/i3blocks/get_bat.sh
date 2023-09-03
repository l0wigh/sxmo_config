#!/bin/bash
bat_line_get=$(cat $XDG_RUNTIME_DIR/sxmobar | grep -n "priority=41" | cut -d ":" -f 1 | head -n 1)
bat_line=$((1+$bat_line_get))
bat_line+="q;d"
eval_pourcent="cat $XDG_RUNTIME_DIR/sxmobar | cut -d \"=\" -f 2 | sed '$bat_line' | cut -d \"%\" -f 1"
pourcent=$(eval $eval_pourcent)
charging=$(cat /sys/class/power_supply/bq27411-0/status)

if [ ["$charging"] = ["Discharging"] ];
then
	echo $pourcent%
else
	echo $pourcent󰉁
fi
