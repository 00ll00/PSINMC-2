#as player
#input: @s PS.tools.vy.x/y/z
#output: @s PS.tools.whd.h

scoreboard players operation $math.sqrt.in PS.mem = @s PS.tools.vy.x
scoreboard players operation $math.sqrt.in PS.mem *= $math.sqrt.in PS.mem

scoreboard players operation #tools.getvwhd.temp PS.mem = @s PS.tools.vy.y
scoreboard players operation #tools.getvwhd.temp PS.mem *= #tools.getvwhd.temp PS.mem
scoreboard players operation $math.sqrt.in PS.mem += #tools.getvwhd.temp PS.mem

scoreboard players operation #tools.getvwhd.temp PS.mem = @s PS.tools.vy.z
scoreboard players operation #tools.getvwhd.temp PS.mem *= #tools.getvwhd.temp PS.mem
scoreboard players operation $math.sqrt.in PS.mem += #tools.getvwhd.temp PS.mem

function ps:math/sqrt/call

scoreboard players operation @s PS.tools.whd.h = $math.sqrt.out PS.mem