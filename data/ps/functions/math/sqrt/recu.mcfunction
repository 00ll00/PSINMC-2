scoreboard players operation #math.sqrt.temp2 PS.mem = $math.sqrt.in PS.mem
scoreboard players operation #math.sqrt.temp2 PS.mem /= $math.sqrt.out PS.mem
scoreboard players operation #math.sqrt.temp2 PS.mem += $math.sqrt.out PS.mem
execute store result score $math.sqrt.out PS.mem store result score #math.sqrt.temp PS.mem run scoreboard players operation #math.sqrt.temp2 PS.mem /= $2 PS.const
scoreboard players operation #math.sqrt.temp PS.mem *= #math.sqrt.temp PS.mem
execute if score #math.sqrt.temp PS.mem > $math.sqrt.in PS.mem run function ps:math/sqrt/recu