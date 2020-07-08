#as player
function ps:tools/com3d/size
execute at @e[tag=PS.tools.stroke] if block ~ ~ ~ #ps:air run setblock ~ ~ ~ minecraft:white_concrete
kill @e[tag=PS.tools.stroke]