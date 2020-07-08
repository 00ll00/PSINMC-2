#as player
scoreboard players set #tools.temp PS.mem 0
execute store success score #tools.temp PS.mem if score $focus.x PS.mem = $focus.ox PS.mem if score $focus.y PS.mem = $focus.oy PS.mem if score $focus.z PS.mem = $focus.oz PS.mem
execute if score #tools.temp PS.mem matches 0 as 0-0110-5053-0-1 at @e[tag=PS.focus.old,tag=PS.players.belonging] facing entity @s feet run function ps:tools/pencil3d/interpolate