#input $math.trig.i  103
#output $math.trig.sin $math.trig.cos  103
tp 0-0110-5053-0-2 .0 .0 .0
execute store result entity 0-0110-5053-0-2 Rotation[0] float 0.001 run scoreboard players get $math.trig.i PS.mem
execute as 0-0110-5053-0-2 at @s rotated as @s run tp ^ ^ ^1
execute store result score $math.round.io PS.mem run data get entity 0-0110-5053-0-2 Pos[0] -10000
function ps:math/round/call
scoreboard players operation $math.trig.sin PS.mem = $math.round.io PS.mem
execute store result score $math.round.io PS.mem run data get entity 0-0110-5053-0-2 Pos[2] 10000
function ps:math/round/call
scoreboard players operation $math.trig.cos PS.mem = $math.round.io PS.mem