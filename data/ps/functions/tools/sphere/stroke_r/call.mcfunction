#as stroke at @s
scoreboard players add #tools.sphere.stroke.count PS.mem 1

execute if score #tools.sphere.rev PS.mem matches 0 if block ~ ~ ~ #ps:air run setblock ~ ~ ~ minecraft:white_concrete
execute if score #tools.sphere.rev PS.mem matches 1 if block ~ ~ ~ minecraft:white_concrete run setblock ~ ~ ~ minecraft:air

function ps:tools/sphere/stroke_r/call1
function ps:tools/sphere/stroke_r/call2