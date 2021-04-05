#as player
#input: @s PS.tools.vz.x/y/z
#output: @s PS.tools.whd.d

scoreboard players operation $math.sqrt.in PS.mem = @s PS.tools.vz.x
scoreboard players operation $math.sqrt.in PS.mem *= $math.sqrt.in PS.mem

scoreboard players operation #tools.getvwhd.temp PS.mem = @s PS.tools.vz.y
scoreboard players operation #tools.getvwhd.temp PS.mem *= #tools.getvwhd.temp PS.mem
scoreboard players operation $math.sqrt.in PS.mem += #tools.getvwhd.temp PS.mem

scoreboard players operation #tools.getvwhd.temp PS.mem = @s PS.tools.vz.z
scoreboard players operation #tools.getvwhd.temp PS.mem *= #tools.getvwhd.temp PS.mem
scoreboard players operation $math.sqrt.in PS.mem += #tools.getvwhd.temp PS.mem

function ps:math/sqrt/call

scoreboard players operation @s PS.tools.whd.d = $math.sqrt.out PS.mem