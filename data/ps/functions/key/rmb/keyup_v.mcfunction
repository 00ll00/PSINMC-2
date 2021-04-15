#as player

execute if score @s PS.tools.pathing matches 1 run function ps:key/rmb/keyup
execute if score @s PS.tools.pathing matches 0 run function ps:key/rmb/keyup_v__
scoreboard players set @s PS.tools.pathing 0