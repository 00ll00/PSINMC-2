#as anchor
scoreboard players set @s PS.color.r 0
scoreboard players set @s PS.color.g 7
scoreboard players set @s PS.color.b 0
function ps:color/getitem/call
team join ps.green @s
tag @s add PS.path.start