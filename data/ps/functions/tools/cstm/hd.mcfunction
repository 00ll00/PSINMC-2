#as player
scoreboard players set #tools.temp PS.mem 0
execute store success score #tools.temp PS.mem if score $focus.x PS.mem = $focus.ox PS.mem if score $focus.y PS.mem = $focus.oy PS.mem if score $focus.z PS.mem = $focus.oz PS.mem
execute if score #tools.temp PS.mem matches 0 as 0-0110-5053-0-1 at @e[tag=PS.focus.old,tag=PS.players.belonging] facing entity @s feet run function ps:tools/cstm/interpolate
execute at 0-0110-5053-0-1 run summon marker ~ ~ ~ {Tags:["PS.","PS.cstm_","PS.cstm","PS.cstm.hd","PS.players.owned","PS.players.belonging"]}
scoreboard players operation @e[tag=PS.cstm_] PS.players.owner = @s PS.players.id
tag @e[tag=PS.cstm_] remove PS.cstm_