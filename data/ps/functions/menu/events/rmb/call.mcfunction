#as player
execute as @e[tag=PS.ctrl] if score @s PS.ctrl.id = @e[tag=PS.menu.focused,limit=1] PS.ctrl.id run tag @s add PS.ctrl.active
execute as @e[tag=PS.menu.focused] run function ps:control/events/rmb/call_
tag @e[tag=PS.ctrl.active] remove PS.ctrl.active