#input: $math.vect.x/y/z
#output: $math.vect.mag

scoreboard players operation #math.vect.temp PS.mem = $math.vect.x PS.mem
scoreboard players operation #math.vect.temp PS.mem *= #math.vect.temp PS.mem
scoreboard players operation $math.sqrt.in PS.mem = #math.vect.temp PS.mem

scoreboard players operation #math.vect.temp PS.mem = $math.vect.y PS.mem
scoreboard players operation #math.vect.temp PS.mem *= #math.vect.temp PS.mem
scoreboard players operation $math.sqrt.in PS.mem += #math.vect.temp PS.mem

scoreboard players operation #math.vect.temp PS.mem = $math.vect.z PS.mem
scoreboard players operation #math.vect.temp PS.mem *= #math.vect.temp PS.mem
scoreboard players operation $math.sqrt.in PS.mem += #math.vect.temp PS.mem

function ps:math/sqrt/call

scoreboard players operation $math.vect.mag PS.mem = $math.sqrt.out PS.mem