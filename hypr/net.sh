#! /bin/bash 
HYPRCMDS=$(hyprctl -j clients | jq -j '.[] | "dispatch closewindow address:\(.address); "')

hyprctl --batch "$HYPRCMDS"
hyprctl dispatch exec [workspace 1 silent] dolphin /home/mohammedbilalns/Documents/Texts
hyprctl dispatch exec [workspace 2 silent] code /home/mohammedbilalns/Documents/GitHub/CSIR-UGC_notes_mathematics 
hyprctl dispatch exec [workspace 1 silent] firefox 

