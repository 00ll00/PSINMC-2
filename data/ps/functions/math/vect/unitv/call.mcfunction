#as input marker with facing input vector
#output: $math.vect.unitv.x/y/z  103

execute positioned 0.0 0.0 0.0 rotated as @s positioned ^ ^ ^1 run tp 0-0110-5053-0-2 ~ ~ ~
execute store result score $math.round.io PS.mem run data get entity 0-0110-5053-0-2 Pos[0] 10000
function ps:math/round/call
scoreboard players operation $math.vect.unitv.x PS.mem = $math.round.io PS.mem
execute store result score $math.round.io PS.mem run data get entity 0-0110-5053-0-2 Pos[1] 10000
function ps:math/round/call
scoreboard players operation $math.vect.unitv.y PS.mem = $math.round.io PS.mem
execute store result score $math.round.io PS.mem run data get entity 0-0110-5053-0-2 Pos[2] 10000
function ps:math/round/call
scoreboard players operation $math.vect.unitv.z PS.mem = $math.round.io PS.mem