#as anchor
scoreboard players set @s PS.color.r 7
scoreboard players set @s PS.color.g 0
scoreboard players set @s PS.color.b 0
function ps:color/getitem/call
team join ps.red
tag @s add PS.path.end