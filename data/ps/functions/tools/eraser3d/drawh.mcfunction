#as player
function ps:tools/com/sizeh
execute at @e[tag=PS.tools.stroke] if block ~ ~ ~ minecraft:white_concrete run setblock ~ ~ ~ air
execute at @e[tag=PS.tools.stroke] align xyz run kill @e[tag=PS.color.raw,dx=0,dy=0,dz=0]
kill @e[tag=PS.tools.stroke]