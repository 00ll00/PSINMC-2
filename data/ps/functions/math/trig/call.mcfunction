#input $math.trig.i  103
#output $math.trig.sin $math.trig.cos  103
tp 00000000-0110-5053-0000-000000000002 .0 .0 .0
execute store result entity 00000000-0110-5053-0000-000000000002 Rotation[0] float 0.001 run scoreboard players get $math.trig.i PS.mem
execute as 00000000-0110-5053-0000-000000000002 at @s rotated as @s run tp ^ ^ ^1
execute store result score $math.round.io PS.mem run data get entity 00000000-0110-5053-0000-000000000002 Pos[0] -10000
function ps:math/round/call
scoreboard players operation $math.trig.sin PS.mem = $math.round.io PS.mem
execute store result score $math.round.io PS.mem run data get entity 00000000-0110-5053-0000-000000000002 Pos[2] 10000
function ps:math/round/call
scoreboard players operation $math.trig.cos PS.mem = $math.round.io PS.mem