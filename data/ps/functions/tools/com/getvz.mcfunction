#as player
#input:
#   @s PS.focus.r.x1/y1/z1
#   @s PS.focus.x/y/z
#output @s PS.tools.vx.x/y/z
scoreboard players operation @s PS.tools.vz.x = @s PS.focus.x
scoreboard players operation @s PS.tools.vz.y = @s PS.focus.y
scoreboard players operation @s PS.tools.vz.z = @s PS.focus.z
scoreboard players operation @s PS.tools.vz.x -= @s PS.focus.r.x1
scoreboard players operation @s PS.tools.vz.y -= @s PS.focus.r.y1
scoreboard players operation @s PS.tools.vz.z -= @s PS.focus.r.z1