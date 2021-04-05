#as player
#input: @s PS.tools.vx.x/y/z
#output: @s PS.tools.whd.w

scoreboard players operation $math.sqrt.in PS.mem = @s PS.tools.vx.x
scoreboard players operation $math.sqrt.in PS.mem *= $math.sqrt.in PS.mem

scoreboard players operation #tools.getvwhd.temp PS.mem = @s PS.tools.vx.y
scoreboard players operation #tools.getvwhd.temp PS.mem *= #tools.getvwhd.temp PS.mem
scoreboard players operation $math.sqrt.in PS.mem += #tools.getvwhd.temp PS.mem

scoreboard players operation #tools.getvwhd.temp PS.mem = @s PS.tools.vx.z
scoreboard players operation #tools.getvwhd.temp PS.mem *= #tools.getvwhd.temp PS.mem
scoreboard players operation $math.sqrt.in PS.mem += #tools.getvwhd.temp PS.mem

function ps:math/sqrt/call

scoreboard players operation @s PS.tools.whd.w = $math.sqrt.out PS.mem