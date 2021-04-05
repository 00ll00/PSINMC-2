#as player
#output: $tools.whd.w/h/d
scoreboard players operation @s PS.tools.whd.w = @s PS.focus.r.x2
scoreboard players operation @s PS.tools.whd.h = @s PS.focus.r.y2
scoreboard players operation @s PS.tools.whd.d = @s PS.focus.r.z2
scoreboard players operation @s PS.tools.whd.w -= @s PS.focus.r.x1
scoreboard players operation @s PS.tools.whd.h -= @s PS.focus.r.y1
scoreboard players operation @s PS.tools.whd.d -= @s PS.focus.r.z1
execute if score @s PS.tools.whd.w matches ..-1 run scoreboard players operation @s PS.tools.whd.w *= $-1 PS.const
execute if score @s PS.tools.whd.h matches ..-1 run scoreboard players operation @s PS.tools.whd.h *= $-1 PS.const
execute if score @s PS.tools.whd.d matches ..-1 run scoreboard players operation @s PS.tools.whd.d *= $-1 PS.const