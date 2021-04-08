#as stroke at @s
scoreboard players add #tools.cube.stroke.count PS.mem 1

execute if score #tools.cube.rev PS.mem matches 0 if block ~ ~ ~ #ps:air run setblock ~ ~ ~ minecraft:white_concrete
execute if score #tools.cube.rev PS.mem matches 1 if block ~ ~ ~ minecraft:white_concrete run setblock ~ ~ ~ minecraft:air

function ps:tools/cube/stroke_f/call1
function ps:tools/cube/stroke_f/call2
function ps:tools/cube/stroke_f/call3