#as player
scoreboard players set #tools.move PS.mem 0
scoreboard players set #tools.inter PS.mem 0
execute store success score #tools.move PS.mem if score $focus.x PS.mem = $focus.ox PS.mem if score $focus.y PS.mem = $focus.oy PS.mem if score $focus.z PS.mem = $focus.oz PS.mem
execute if score #tools.move PS.mem matches 0 as 0-0110-5053-0-1 at @e[tag=PS.focus.old,tag=PS.players.belonging] facing entity @s feet run function ps:tools/brush/interpolate
execute if score #tools.move PS.mem matches 0 at 0-0110-5053-0-1 run function ps:tools/brush/draw