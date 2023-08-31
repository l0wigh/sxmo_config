pourcent=$(cat $XDG_RUNTIME_DIR/sxmobar | cut -d "=" -f 2 | sed '38q;d' | cut -d "%" -f 1)
charging=$(cat /sys/class/power_supply/bq27411-0/status)

if [ ["$charging"] = ["Discharging"] ];
then
	echo $pourcent%
else
	echo $pourcent󰉁
	# echo $pourcent
fi
