#as player
execute as 0-0110-5053-0-1 at @s run function ps:tools/com3d/normal
execute as 0-0110-5053-0-1 at @s rotated as @s run function ps:tools/com3d/plate

execute as @e[tag=PS.tools.stroke] at @s run setblock ~ ~ ~ stone

kill @e[tag=PS.tools.stroke]