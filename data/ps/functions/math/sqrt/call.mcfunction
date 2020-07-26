#input $math.sqrt.in
#output $math.sqrt.out

execute if score $math.sqrt.in PS.mem matches ..-1 run scoreboard players operation $math.sqrt.in PS.mem *= $-1 PS.const
execute if score $math.sqrt.in PS.mem matches 0..1 run scoreboard players operation $math.sqrt.out PS.mem = $math.sqrt.in PS.mem
execute if score $math.sqrt.in PS.mem matches 2.. run function ps:math/sqrt/valuate
scoreboard players operation #math.sqrt.temp PS.mem = $math.sqrt.out PS.mem
scoreboard players operation #math.sqrt.temp PS.mem *= $math.sqrt.out PS.mem
execute if score #math.sqrt.temp PS.mem > $math.sqrt.in PS.mem run function ps:math/sqrt/recu