#as player

execute if score @s PS.tools.pathing matches 1 run function ps:path/focus/getnext
execute if score @s PS.tools.pathing matches 1 if score $focus.g PS.mem matches 1 run function ps:key/rmb/keyhd
execute if score @s PS.tools.pathing matches 1 if score $focus.g PS.mem matches 0 run function ps:key/rmb/keyup_v_
execute if score @s PS.tools.pathing matches 1 if score $focus.g PS.mem matches 0 run scoreboard players set @s PS.tools.pathing 0
