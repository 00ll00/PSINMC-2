#as player
#input:
#   @s PS.focus.r.x1/y1/z1
#   @s PS.focus.r.x2/y2/z2
#output: $tools.whd.w/h/d
scoreboard players operation @s PS.tools.whd.w = @s PS.focus.r.x2
scoreboard players operation @s PS.tools.whd.h = @s PS.focus.r.y2
scoreboard players operation @s PS.tools.whd.d = @s PS.focus.r.z2
scoreboard players operation @s PS.tools.whd.w -= @s PS.focus.r.x1
scoreboard players operation @s PS.tools.whd.h -= @s PS.focus.r.y1
scoreboard players operation @s PS.tools.whd.d -= @s PS.focus.r.z1