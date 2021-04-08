#as player
#input: @s PS.focus.x/y/z
#output: @s PS.focus.r.x2/y2/z2
scoreboard players operation @s PS.focus.r.x2 = @s PS.focus.x
scoreboard players operation @s PS.focus.r.y2 = @s PS.focus.y
scoreboard players operation @s PS.focus.r.z2 = @s PS.focus.z