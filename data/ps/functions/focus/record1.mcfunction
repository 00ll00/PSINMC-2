#as player
#input: @s PS.focus.x/y/z
#output: @s PS.focus.r.x1/y1/z1
scoreboard players operation @s PS.focus.r.x1 = @s PS.focus.x
scoreboard players operation @s PS.focus.r.y1 = @s PS.focus.y
scoreboard players operation @s PS.focus.r.z1 = @s PS.focus.z