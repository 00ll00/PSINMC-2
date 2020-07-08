#as cursor
scoreboard players operation @s PS.focus.get = $focus.g PS.mem
execute if score @s PS.focus.get matches 1 run function ps:focus/cursor/onblock1
execute if score @s PS.focus.get matches 2 run function ps:focus/cursor/onair1
execute if score @s PS.focus.get matches -1 run function ps:focus/cursor/onvacuum