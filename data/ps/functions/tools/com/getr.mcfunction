#as player
#input:
#   @s PS.focus.r.x1/y1/z1
#   @s PS.focus.r.x2/y2/z2
#output: $tools.r
scoreboard players operation #tools.getr.temp PS.mem = @s PS.focus.r.x2
scoreboard players operation #tools.getr.temp PS.mem -= @s PS.focus.r.x1
scoreboard players operation #tools.getr.temp PS.mem *= #tools.getr.temp PS.mem
scoreboard players operation $math.sqrt.in PS.mem = #tools.getr.temp PS.mem
scoreboard players operation #tools.getr.temp PS.mem = @s PS.focus.r.z2
scoreboard players operation #tools.getr.temp PS.mem -= @s PS.focus.r.z1
scoreboard players operation #tools.getr.temp PS.mem *= #tools.getr.temp PS.mem
scoreboard players operation $math.sqrt.in PS.mem += #tools.getr.temp PS.mem
scoreboard players operation #tools.getr.temp PS.mem = @s PS.focus.r.y2
scoreboard players operation #tools.getr.temp PS.mem -= @s PS.focus.r.y1
scoreboard players operation #tools.getr.temp PS.mem *= #tools.getr.temp PS.mem
scoreboard players operation $math.sqrt.in PS.mem += #tools.getr.temp PS.mem
function ps:math/sqrt/call
scoreboard players operation @s PS.tools.r = $math.sqrt.out PS.mem