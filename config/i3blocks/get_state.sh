#!/bin/bash
state_line_get=$(cat $XDG_RUNTIME_DIR/sxmobar | grep -n "priority=90" | cut -d ":" -f 1)
state_line=$((1+$state_line_get))
state_line+="q;d"
eval_state="cat $XDG_RUNTIME_DIR/sxmobar | cut -d \"=\" -f 2 | sed '$state_line' | cut -d \"%\" -f 1"
state=$(eval $eval_state)

echo $state
